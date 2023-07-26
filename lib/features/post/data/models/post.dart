// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:quriverse/features/post/domain/entities/post.dart';

class PostModel extends PostEntity {
  PostModel({
    String? id,
    String? userId,
    PostType? type,
    List<PostImage>? images,
    PostVideo? video,
    String? requotedId,
    bool? isDeleted,
    String? content,
    String? description,
    List<String>? tags,
    int? quotesCount,
    int? commentsCount,
    int? likesCount,
    bool? isLiked,
    int? createdAt,
  }) : super(
          id: id,
          userId: userId,
          type: type,
          images: images,
          video: video,
          requotedId: requotedId,
          isDeleted: isDeleted,
          content: content,
          description: description,
          tags: tags,
          quotesCount: quotesCount,
          commentsCount: commentsCount,
          likesCount: likesCount,
          isLiked: isLiked,
          createdAt: createdAt
        );

  PostModel copyWith({
    String? id,
    String? userId,
    PostType? type,
    List<PostImage>? images,
    PostVideo? video,
    String? requotedId,
    bool? isDeleted,
    String? content,
    String? description,
    List<String>? tags,
    int? quotesCount,
    int? commentsCount,
    int? likesCount,
    bool? isLiked,
  }) {
    return PostModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      images: images ?? this.images,
      video: video ?? this.video,
      requotedId: requotedId ?? this.requotedId,
      isDeleted: isDeleted ?? this.isDeleted,
      content: content ?? this.content,
      description: description ?? this.description,
      tags: tags ?? this.tags,
      quotesCount: quotesCount ?? this.quotesCount,
      commentsCount: commentsCount ?? this.commentsCount,
      likesCount: likesCount ?? this.likesCount,
      isLiked: isLiked ?? this.isLiked,
    );
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] != null ? map['id'] as String : null,
      userId: map['user_id'] != null ? map['user_id'] as String : null,
      type:
          map['type'] != null ? stringToPostType(map['type'] as String) : null,
      images: map['images'] != null
          ? List<PostImage>.from(
              (map['images'] as List<dynamic>).map<PostImage?>(
                (x) => PostImage.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      video: map['video'] != null
          ? PostVideo.fromMap(map['video'] as Map<String, dynamic>)
          : null,
      requotedId:
          map['requoted_id'] != null ? map['requoted_id'] as String : null,
      isDeleted: map['is_deleted'] != null ? map['is_deleted'] as bool : null,
      content: map['content'] != null ? map['content'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      tags: map['tags'] != null
          ? List<String>.from(map['tags'] as List<dynamic>)
          : null,
      quotesCount:
          map['quotes_count'] != null ? map['quotes_count'] as int : null,
      commentsCount:
          map['comments_count'] != null ? map['comments_count'] as int : null,
      likesCount: map['likes_count'] != null ? map['likes_count'] as int : null,
      isLiked: map['is_liked'] != null ? map['is_liked'] as bool : null,
      createdAt: map['created_at'] != null ? map['created_at'] as int : null,
    );
  }

  factory PostModel.fromJson(String source) =>
      PostModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PostModel(id: $id, userId: $userId, type: $type, images: $images, video: $video, requotedId: $requotedId, isDeleted: $isDeleted, content: $content, description: $description, tags: $tags, quotesCount: $quotesCount, commentsCount: $commentsCount, likesCount: $likesCount, isLiked: $isLiked)';
  }

  @override
  bool operator ==(covariant PostModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.userId == userId &&
        other.type == type &&
        listEquals(other.images, images) &&
        other.video == video &&
        other.requotedId == requotedId &&
        other.isDeleted == isDeleted &&
        other.content == content &&
        other.description == description &&
        listEquals(other.tags, tags) &&
        other.quotesCount == quotesCount &&
        other.commentsCount == commentsCount &&
        other.likesCount == likesCount &&
        other.isLiked == isLiked;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        type.hashCode ^
        images.hashCode ^
        video.hashCode ^
        requotedId.hashCode ^
        isDeleted.hashCode ^
        content.hashCode ^
        description.hashCode ^
        tags.hashCode ^
        quotesCount.hashCode ^
        commentsCount.hashCode ^
        likesCount.hashCode ^
        isLiked.hashCode;
  }
}
