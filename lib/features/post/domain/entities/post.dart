// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:quriverse/features/post/data/models/post.dart';
import 'package:quriverse/features/post/domain/entities/user.dart';

part 'post.g.dart';

@Collection()
class PostEntity {
  Id? lid;
  String? id;
  UserEntity? user;
  String? userId;
  @Enumerated(EnumType.value, 'myValue')
  PostType? type;
  List<PostImage>? images;
  PostVideo? video;
  String? requotedId;
  bool? isDeleted;
  String? content;
  String? description;
  List<String>? tags;
  int? quotesCount;
  int? commentsCount;
  int? likesCount;
  bool? isLiked;
  int? createdAt;
  PostEntity({
    this.id,
    this.userId,
    this.type,
    this.images,
    this.video,
    this.requotedId,
    this.isDeleted,
    this.content,
    this.description,
    this.tags,
    this.quotesCount,
    this.commentsCount,
    this.likesCount,
    this.isLiked,
    this.createdAt,
    this.user,
  });

  factory PostEntity.fromModel(PostModel postModel) {
    return PostEntity(
        id: postModel.id,
        userId: postModel.userId,
        type: postModel.type,
        images: postModel.images,
        video: postModel.video,
        requotedId: postModel.requotedId,
        isDeleted: postModel.isDeleted,
        content: postModel.content,
        description: postModel.description,
        tags: postModel.tags,
        quotesCount: postModel.quotesCount,
        commentsCount: postModel.commentsCount,
        likesCount: postModel.likesCount,
        isLiked: postModel.isLiked,
        createdAt: postModel.createdAt,
        user: postModel.user);
  }
}

enum PostType {
  IMAGES(1),
  VIDEO(2),
  STREAM(3),
  QUOTE(4),
  MICRO(5),
  BLOG(6),
  LINK(7),
  POLLS(8),
  SLICE(9);

  const PostType(this.myValue);

  final short myValue;
}

PostType? stringToPostType(String type) {
  switch (type) {
    case "IMAGES":
      return PostType.IMAGES;
    case "VIDEO":
      return PostType.VIDEO;
    case "STREAM":
      return PostType.STREAM;
    case "QUOTE":
      return PostType.QUOTE;
    case "MICRO":
      return PostType.MICRO;
    case "BLOG":
      return PostType.BLOG;
    case "LINK":
      return PostType.LINK;
    case "SLICE":
      return PostType.SLICE;
    default:
      return null;
  }
}

@embedded
class PostImage {
  MediaSource? mediaUrl;
  double? mediaHeight;
  double? mediaWidth;
  PostImage({
    this.mediaUrl,
    this.mediaHeight,
    this.mediaWidth,
  });

  PostImage copyWith({
    MediaSource? mediaUrl,
    double? mediaHeight,
    double? mediaWidth,
  }) {
    return PostImage(
      mediaUrl: mediaUrl ?? this.mediaUrl,
      mediaHeight: mediaHeight ?? this.mediaHeight,
      mediaWidth: mediaWidth ?? this.mediaWidth,
    );
  }

  factory PostImage.fromMap(Map<String, dynamic> map) {
    return PostImage(
      mediaUrl: map['media_url'] != null
          ? MediaSource.fromMap(map['media_url'] as Map<String, dynamic>)
          : null,
      mediaHeight: map['media_height'] != null
          ? double.parse(map['media_height'].toString())
          : null,
      mediaWidth: map['media_width'] != null
          ? double.parse(map['media_width'].toString())
          : null,
    );
  }

  factory PostImage.fromJson(String source) =>
      PostImage.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'PostImage(mediaUrl: $mediaUrl, mediaHeight: $mediaHeight, mediaWidth: $mediaWidth)';

  @override
  bool operator ==(covariant PostImage other) {
    if (identical(this, other)) return true;

    return other.mediaUrl == mediaUrl &&
        other.mediaHeight == mediaHeight &&
        other.mediaWidth == mediaWidth;
  }

  @override
  int get hashCode =>
      mediaUrl.hashCode ^ mediaHeight.hashCode ^ mediaWidth.hashCode;
}

@embedded
class PostVideo {
  MediaSource? mediaUrl;
  double? mediaHeight;
  double? mediaWidth;
  bool? isHls;
  PostVideo({
    this.mediaUrl,
    this.mediaHeight,
    this.mediaWidth,
    this.isHls,
  });

  factory PostVideo.fromMap(Map<String, dynamic> map) {
    return PostVideo(
      mediaUrl: map['media_url'] != null
          ? MediaSource.fromMap(map['media_url'] as Map<String, dynamic>)
          : null,
      mediaHeight:
          map['media_height'] != null ? map['media_height'] as double : null,
      mediaWidth:
          map['media_width'] != null ? map['media_width'] as double : null,
      isHls: map['is_hls'] != null ? map['is_hls'] as bool : null,
    );
  }

  factory PostVideo.fromJson(String source) =>
      PostVideo.fromMap(json.decode(source) as Map<String, dynamic>);

  PostVideo copyWith({
    MediaSource? mediaUrl,
    double? mediaHeight,
    double? mediaWidth,
    bool? isHls,
  }) {
    return PostVideo(
      mediaUrl: mediaUrl ?? this.mediaUrl,
      mediaHeight: mediaHeight ?? this.mediaHeight,
      mediaWidth: mediaWidth ?? this.mediaWidth,
      isHls: isHls ?? this.isHls,
    );
  }

  @override
  String toString() {
    return 'PostVideo(mediaUrl: $mediaUrl, mediaHeight: $mediaHeight, mediaWidth: $mediaWidth, isHls: $isHls)';
  }

  @override
  bool operator ==(covariant PostVideo other) {
    if (identical(this, other)) return true;

    return other.mediaUrl == mediaUrl &&
        other.mediaHeight == mediaHeight &&
        other.mediaWidth == mediaWidth &&
        other.isHls == isHls;
  }

  @override
  int get hashCode {
    return mediaUrl.hashCode ^
        mediaHeight.hashCode ^
        mediaWidth.hashCode ^
        isHls.hashCode;
  }
}

@embedded
class MediaSource {
  String? source;
  String? thumbnail;
  MediaSource({
    this.source,
    this.thumbnail,
  });

  factory MediaSource.fromMap(Map<String, dynamic> map) {
    return MediaSource(
      source: map['source'] != null ? map['source'] as String : null,
      thumbnail: map['thumbnail'] != null ? map['thumbnail'] as String : null,
    );
  }

  factory MediaSource.fromJson(String source) =>
      MediaSource.fromMap(json.decode(source) as Map<String, dynamic>);
}
