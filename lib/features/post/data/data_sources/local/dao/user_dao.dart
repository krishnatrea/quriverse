import 'package:isar/isar.dart';
import 'package:quriverse/features/post/domain/entities/user.dart';

import '../../../../../../core/local/isardb_manager.dart';

class UserDao {
  void insert(UserEntity user) {
    IsarDBManager.isar!
        .writeTxnSync(() => IsarDBManager.isar!.userEntitys.putSync(user));
  }

  void insertAll(List<UserEntity> users) {
    IsarDBManager.isar!.writeTxn(() async {
      for (var user in users) {
        await IsarDBManager.isar!.userEntitys
            .filter()
            .idContains(user.id!)
            .deleteAll();
      }
      await IsarDBManager.isar!.userEntitys.putAll(users);
    });
  }

  Future<UserEntity?> get(String id) async {
    return await IsarDBManager.isar!.userEntitys
        .filter()
        .idContains(id)
        .findFirst();
  }

  Future<List<UserEntity>> getAll() async {
    return await IsarDBManager.isar!.userEntitys
        .where()
        .distinctById()
        .findAll();
  }
}
