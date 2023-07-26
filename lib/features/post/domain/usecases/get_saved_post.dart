import 'package:quriverse/core/usecase/usecase.dart';
import 'package:quriverse/features/post/data/data_sources/local/dao/post_dao.dart';
import 'package:quriverse/features/post/data/data_sources/local/dao/user_dao.dart';
import 'package:quriverse/features/post/domain/entities/post.dart';

class GetSavedPost extends UseCase<PostEntity?, String> {
  PostDao postDao;
  UserDao userDao;

  GetSavedPost(this.postDao, this.userDao);

  @override
  Future<PostEntity?> call({String? params}) async {
    PostEntity? postEntity = await postDao.get(params!);
    if (postEntity != null) {
      postEntity.user = await userDao.get(postEntity.userId!);
    }
    return postEntity;
  }
}
