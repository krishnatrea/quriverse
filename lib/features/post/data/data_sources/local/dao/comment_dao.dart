import 'package:isar/isar.dart';
import 'package:quriverse/core/local/isardb_manager.dart';
import 'package:quriverse/features/post/domain/entities/comment.dart';

class CommentDao {
  void insert(CommentEntity comment) {
    IsarDBManager.isar!.writeTxnSync(
        () => IsarDBManager.isar!.commentEntitys.putSync(comment));
  }

  void insertAll(List<CommentEntity> comments) {
    IsarDBManager.isar!.writeTxnSync(() {
      IsarDBManager.isar!.commentEntitys.putAllSync(comments);
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
        .findAll();
  }
}
