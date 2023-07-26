import 'package:quriverse/core/usecase/usecase.dart';
import 'package:quriverse/features/post/data/data_sources/local/dao/comment_dao.dart';
import 'package:quriverse/features/post/data/data_sources/local/dao/user_dao.dart';
import 'package:quriverse/features/post/domain/entities/comment.dart';

class GetSavedComments extends UseCase<List<CommentEntity>, String> {
  final CommentDao commentDao;
  final UserDao userDao;

  GetSavedComments(this.commentDao, this.userDao);

  @override
  Future<List<CommentEntity>> call({String? params}) async {
    List<CommentEntity> comments = await commentDao.getAll(params!);
    List<CommentEntity> fetchedComments = [];
    comments.forEach((comment) async {
      comment.user = await userDao.get(comment.userId!);
      fetchedComments.add(comment);
    });
    return fetchedComments;
  }
}
