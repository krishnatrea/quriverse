import 'package:isar/isar.dart';
import 'package:quriverse/features/post/domain/entities/post.dart';

import '../../../../../../core/local/isardb_manager.dart';

class PostDao {
  Future<void> insert(PostEntity post) async {
    await IsarDBManager.isar!.writeTxn(() async {
      await IsarDBManager.isar!.postEntitys
          .filter()
          .idContains(post.id!)
          .deleteAll();
      await IsarDBManager.isar!.postEntitys.put(post);
    });
  }

  Future<void> insertAll(List<PostEntity> posts) async {
    await IsarDBManager.isar!.writeTxn(() async {
      for (var post in posts) {
        await IsarDBManager.isar!.postEntitys
            .filter()
            .idContains(post.id!)
            .deleteAll();
      }
      await IsarDBManager.isar!.postEntitys.putAll(posts);
    });
  }

  Future<PostEntity?> get(String id) async {
    return await IsarDBManager.isar!.postEntitys
        .filter()
        .idContains(id)
        .findFirst();
  }

  Future<List<PostEntity>> getAll() async {
    return await IsarDBManager.isar!.postEntitys
        .where()
        .distinctById()
        .findAll();
  }
}
