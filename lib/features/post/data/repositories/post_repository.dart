// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:quriverse/core/resource/data_states.dart';
import 'package:quriverse/core/utils/constants/constants.dart';
import 'package:quriverse/features/post/data/data_sources/local/dao/post_dao.dart';
import 'package:quriverse/features/post/data/data_sources/local/dao/user_dao.dart';
import 'package:quriverse/features/post/data/data_sources/remote/post_api_service.dart';
import 'package:quriverse/features/post/domain/entities/post.dart';
import 'package:quriverse/features/post/domain/repositories/post_repository.dart';

import '../../domain/entities/user.dart';
import '../models/post_response_model.dart';

class PostRepositoryImp extends PostRepository {
  final PostApiService postApiService;
  final PostDao postDao;
  final UserDao userDao;
  PostRepositoryImp(this.postApiService, this.postDao, this.userDao);

  @override
  Future<DataState<PostResponseModel>> getPost(String id) async {
    try {
      final httpResponse = await postApiService.getPost(id);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        postDao.insert(PostEntity.fromModel(httpResponse.data.data!));
        userDao.insertAll(httpResponse.data.user!.values
            .map<UserEntity>((value) => UserEntity.fromModel(value))
            .toList());
        print(httpResponse.data.data.toString());
        return DataSuccess(httpResponse.data);
      }
      return DataFailed(DioException(
        requestOptions: httpResponse.response.requestOptions,
        error: httpResponse.response.statusMessage,
        type: DioExceptionType.badResponse,
      ));
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
