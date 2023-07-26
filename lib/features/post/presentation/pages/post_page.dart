import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:quriverse/core/utils/constants/color_constants.dart';
import 'package:quriverse/core/utils/constants/constants.dart';
import 'package:quriverse/features/post/domain/entities/comment.dart';
import 'package:quriverse/features/post/domain/entities/post.dart';
import 'package:quriverse/features/post/domain/entities/user.dart';
import 'package:quriverse/features/post/presentation/bloc/comments/comments_cubit.dart';
import 'package:quriverse/features/post/presentation/bloc/post/post_cubit.dart';

import '../widgets/profile_image.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      initPage(context);
    });
    super.initState();
  }

  void initPage(BuildContext context) {
    try {
      BlocProvider.of<PostCubit>(context).getPost(postId);
      BlocProvider.of<CommentsCubit>(context).getComments(postId);
    } catch (e) {
      print(e.toString());
      // showAboutDialog(context: context, children: [Text(e.toString())]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<PostCubit, PostEntity?>(
          builder: (context, state) {
            if (state != null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: RadialGradient(
                            center: Alignment(0, -20),
                            radius: 11,
                            colors: [
                          kOrangeColor.withOpacity(0.2),
                          Colors.black
                        ])),
                    child: _buildAppBar(state.user!),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: RefreshIndicator.adaptive(
                        onRefresh: () async {
                          initPage(context);
                        },
                        child: Column(
                          children: [
                            _buildPost(state),
                            _buildComments(),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              );
            }
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildAppBar(UserEntity user) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 40, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/icons/back_icon.png",
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  ProfileImage(url: user.imageUrl!.source!),
                  _buildUsername(user)
                ],
              ),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_rounded,
                size: 26,
              )),
        ],
      ),
    );
  }

  Padding _buildUsername(UserEntity user) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFirstname(user.firstName!),
          Text(
            "@${user.username!}",
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
          )
        ],
      ),
    );
  }

  Text _buildFirstname(String name) {
    return Text(
      name,
      style: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: kOrangeColor),
    );
  }

  Widget _buildPost(PostEntity post) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildImageCarousel(post),
        _buildTitle(post.content!),
        _buildTags(post.tags!),
        _buildMenusOption(post),
        _buildDate(post.createdAt!),
      ],
    );
  }

  Padding _buildDate(int createdAt) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(format.format(DateTime.fromMillisecondsSinceEpoch(createdAt)),
          style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  Padding _buildMenusOption(PostEntity post) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              _buildMenu(
                  'assets/icons/Icons_talk.png', post.quotesCount.toString()),
              const SizedBox(
                width: 30,
              ),
              _buildMenu('assets/icons/Icons_comment.png',
                  post.commentsCount.toString()),
              const SizedBox(
                width: 30,
              ),
              _buildMenu(
                  'assets/icons/Icons_love.png', post.likesCount.toString())
            ],
          ),
          Image.asset(
            'assets/icons/Icons_share.png',
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Row _buildMenu(String icon, String count) {
    return Row(
      children: [
        Image.asset(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(count, style: TextStyle(fontSize: 14, color: Colors.white)),
      ],
    );
  }

  Padding _buildTags(List<String> tags) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [for (String tag in tags) _buildTag(tag)],
      ),
    );
  }

  Widget _buildTag(String tag) {
    return Container(
        decoration: BoxDecoration(
            color: Color(0xff242424), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Text(
            "#$tag",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ));
  }

  Padding _buildTitle(String content) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
        content,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );
  }

  CarouselSlider _buildImageCarousel(PostEntity post) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 310,
        enableInfiniteScroll: false,
      ),
      items: post.images!.map((images) {
        return Builder(
          builder: (BuildContext context) {
            return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CachedNetworkImage(
                  imageUrl: images.mediaUrl!.source!,
                  height: images.mediaHeight,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ));
          },
        );
      }).toList(),
    );
  }

  Widget _buildComments() {
    return BlocBuilder<CommentsCubit, List<CommentEntity>>(
      builder: (context, state) {
        if (state.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildCommentsHeader(state.length.toString()),
                SizedBox(
                  height: 20,
                ),
                for (var comment in state) _buildComment(comment, context)
              ],
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        );
      },
    );
  }

  Padding _buildComment(CommentEntity comment, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileImage(url: comment.user!.imageUrl!.source!),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFirstname(comment.user!.firstName!),
                  Text(
                    " • 5m",
                    style: TextStyle(
                        fontFamily:
                            DefaultTextStyle.of(context).style.fontFamily,
                        fontSize: 14,
                        color: Colors.white),
                  )
                ],
              ),
              _buildCommentContents(context, comment.content!),
              Row(
                children: [
                  _buildMenu("assets/icons/Icons_reply.png",
                      comment.repliesCount!.toString()),
                  SizedBox(
                    width: 20,
                  ),
                  _buildMenu("assets/icons/Icons_love.png",
                      comment.likesCount!.toString()),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  SizedBox _buildCommentContents(BuildContext context, String comment) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          comment,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
    );
  }

  Row _buildCommentsHeader(String length) {
    return Row(
      children: [
        Text(
          length + " comments".toUpperCase(),
          style: const TextStyle(
              fontSize: 16, color: kOrangeColor, letterSpacing: 3),
        ),
        const SizedBox(
          width: 10,
        ),
        const SizedBox(
          width: 210,
          height: 5,
          child: Divider(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

DateFormat format = DateFormat("d MMMM y");
