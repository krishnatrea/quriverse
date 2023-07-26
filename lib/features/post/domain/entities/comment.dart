// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';
import 'package:quriverse/features/post/data/models/comment.dart';
import 'package:quriverse/features/post/domain/entities/post.dart';
import 'package:quriverse/features/post/domain/entities/user.dart';
part 'comment.g.dart';

@Collection()
class CommentEntity {
  Id? lid;
  MediaSource? media;
  String? id;
  UserEntity? user;
  String? userId;
  String? postId;
  String? content;
  bool? isEdited;
  String? parentId;
  int? repliesCount;
  int? likesCount;
  int? createdAt;
  int? updatedAt;
  CommentEntity({
    this.media,
    this.id,
    this.userId,
    this.postId,
    this.content,
    this.isEdited,
    this.parentId,
    this.repliesCount,
    this.likesCount,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  CommentEntity copyWith({
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
  }) {
    return CommentEntity(
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
  }

  factory CommentEntity.formModel(CommentModel commentModel) {
    return CommentEntity(
        media: commentModel.media,
        id: commentModel.id,
        userId: commentModel.userId,
        postId: commentModel.postId,
        content: commentModel.content,
        isEdited: commentModel.isEdited,
        parentId: commentModel.parentId,
        repliesCount: commentModel.repliesCount,
        likesCount: commentModel.likesCount,
        createdAt: commentModel.createdAt,
        updatedAt: commentModel.updatedAt,
        user: commentModel.user);
  }

  @override
  String toString() {
    return 'CommentEntity(media: $media, id: $id, userId: $userId, postId: $postId, content: $content, isEdited: $isEdited, parentId: $parentId, repliesCount: $repliesCount, likesCount: $likesCount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
