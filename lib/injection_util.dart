import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quriverse/core/local/isardb_manager.dart';
import 'package:quriverse/features/post/data/data_sources/local/dao/comment_dao.dart';
import 'package:quriverse/features/post/data/data_sources/local/dao/post_dao.dart';
import 'package:quriverse/features/post/data/data_sources/local/dao/user_dao.dart';
import 'package:quriverse/features/post/data/data_sources/remote/comment_api_service.dart';
import 'package:quriverse/features/post/data/data_sources/remote/post_api_service.dart';
import 'package:quriverse/features/post/data/repositories/comment_repository.dart';
import 'package:quriverse/features/post/data/repositories/post_repository.dart';
import 'package:quriverse/features/post/domain/repositories/comment_repository.dart';
import 'package:quriverse/features/post/domain/repositories/post_repository.dart';
import 'package:quriverse/features/post/domain/usecases/get_comments.dart';
import 'package:quriverse/features/post/domain/usecases/get_post.dart';
import 'package:quriverse/features/post/domain/usecases/get_saved_comments.dart';
import 'package:quriverse/features/post/domain/usecases/get_saved_post.dart';
import 'package:quriverse/features/post/presentation/bloc/comments/comments_cubit.dart';
import 'package:quriverse/features/post/presentation/bloc/post/post_cubit.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  await IsarDBManager.init();
  sl.registerSingleton<CommentDao>(CommentDao());
  sl.registerSingleton<UserDao>(UserDao());
  sl.registerSingleton<PostDao>(PostDao());
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<PostApiService>(PostApiService(sl()));
  sl.registerSingleton<PostRepository>(PostRepositoryImp(sl(), sl(), sl()));
  sl.registerSingleton<GetPost>(GetPost(sl()));
  sl.registerSingleton<CommentApiService>(CommentApiService(sl()));
  sl.registerSingleton<CommentRepository>(
      CommentRepositoryImp(sl(), sl(), sl()));
  sl.registerSingleton<GetSavedComments>(GetSavedComments(sl(), sl()));
  sl.registerSingleton<GetSavedPost>(GetSavedPost(sl(), sl()));
  sl.registerSingleton<GetComments>(GetComments(sl()));
  sl.registerFactory<PostCubit>(() => PostCubit(sl(), sl()));
  sl.registerFactory<CommentsCubit>(() => CommentsCubit(sl(), sl()));
}
