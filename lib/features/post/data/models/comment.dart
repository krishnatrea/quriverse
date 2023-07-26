// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:quriverse/features/post/domain/entities/comment.dart';

import '../../domain/entities/post.dart';

class CommentModel extends CommentEntity {
  CommentModel({
    MediaSource? media,
    String? id,
    String? userId,
    String? postId,
    String? content,
    bool? isEdited,
    String? parentId,
    int? repliesCount,
    int? likesCount,
    int? createdAt,
    int? updatedAt,
  }) : super(
          media: media,
          id: id,
          userId: userId,
          postId: postId,
          content: content,
          isEdited: isEdited,
          parentId: parentId,
          repliesCount: repliesCount,
          likesCount: likesCount,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  CommentModel.fromJson(Map<String, dynamic> json) {
    media = json['media'];
    id = json['id'];
    userId = json['user_id'];
    postId = json['post_id'];
    content = json['content'];
    isEdited = json['is_edited'];
    parentId = json['parent_id'];
    repliesCount = json['replies_count'];
    likesCount = json['likes_count'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['media'] = this.media;
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['post_id'] = this.postId;
    data['content'] = this.content;
    data['is_edited'] = this.isEdited;
    data['parent_id'] = this.parentId;
    data['replies_count'] = this.repliesCount;
    data['likes_count'] = this.likesCount;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }

  @override
  String toString() {
    return 'CommentModel(media: $media, id: $id, userId: $userId, postId: $postId, content: $content, isEdited: $isEdited, parentId: $parentId, repliesCount: $repliesCount, likesCount: $likesCount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
