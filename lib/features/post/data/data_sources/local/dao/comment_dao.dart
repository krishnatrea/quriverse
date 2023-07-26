import 'package:isar/isar.dart';
import 'package:quriverse/core/local/isardb_manager.dart';
import 'package:quriverse/features/post/domain/entities/comment.dart';

class CommentDao {
  void insert(CommentEntity comment) {
    IsarDBManager.isar!.writeTxnSync(
        () => IsarDBManager.isar!.commentEntitys.putSync(comment));
  }

  Future<void> insertAll(List<CommentEntity> comments) async {
    IsarDBManager.isar!.writeTxn(() async {
      for (var comment in comments) {
        await IsarDBManager.isar!.commentEntitys
            .filter()
            .idContains(comment.id!)
            .deleteAll();
      }
      await IsarDBManager.isar!.commentEntitys.putAll(comments);
    });
  }

  Future<CommentEntity?> get(String id) async {
    return await IsarDBManager.isar!.commentEntitys
        .filter()
        .idContains(id)
        .findFirst();
  }

  Future<List<CommentEntity>> getAll(String id) async {
    return await IsarDBManager.isar!.commentEntitys
        .filter()
        .postIdContains(id)
        .distinctById()
        .findAll();
  }
}
