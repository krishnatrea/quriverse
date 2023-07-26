import 'package:bloc/bloc.dart';
import 'package:quriverse/features/post/domain/entities/post.dart';
import 'package:quriverse/features/post/domain/usecases/get_post.dart';
import 'package:quriverse/features/post/domain/usecases/get_saved_post.dart';

class PostCubit extends Cubit<PostEntity?> {
  final GetPost getPostUseCase;
  final GetSavedPost getSavedPost;
  PostCubit(this.getPostUseCase, this.getSavedPost) : super(null);
  void getPost(String id) async {
    var savedPosts = await getSavedPost(params: id);
    emit(savedPosts);
    PostEntity? postEntity;
    var postData = await getPostUseCase(params: id);
    if (postData.data?.data != null) {
      postEntity = PostEntity.fromModel(postData.data!.data!);
      postEntity.user = postData.data!.user![postData.data!.data!.userId!];
    }
    if(postEntity != null) {
    emit(postEntity);
    }
  }
}
