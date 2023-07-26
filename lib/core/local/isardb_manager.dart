import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quriverse/features/post/domain/entities/comment.dart';
import 'package:quriverse/features/post/domain/entities/post.dart';
import 'package:quriverse/features/post/domain/entities/user.dart';

class IsarDBManager {
  IsarDBManager();

  static Isar? isar;

  static Future<void> init() async {
    var dir = await getApplicationSupportDirectory();
    isar = await Isar.open([
      UserEntitySchema,
      CommentEntitySchema,
      PostEntitySchema,
    ], directory: dir.path);
  }
}
