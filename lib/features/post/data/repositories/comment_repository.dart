// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:quriverse/core/resource/data_states.dart';
import 'package:quriverse/features/post/data/data_sources/local/dao/comment_dao.dart';
import 'package:quriverse/features/post/data/data_sources/remote/comment_api_service.dart';
import 'package:quriverse/features/post/data/models/comment_response_model.dart';
import 'package:quriverse/features/post/domain/entities/comment.dart';
import 'package:quriverse/features/post/domain/entities/user.dart';
import 'package:quriverse/features/post/domain/repositories/comment_repository.dart';

import '../data_sources/local/dao/user_dao.dart';

class CommentRepositoryImp implements CommentRepository {
  final CommentApiService commentApiService;
  final CommentDao commentDao;
  final UserDao userDao;

  CommentRepositoryImp(this.commentApiService, this.commentDao, this.userDao);

  @override
  Future<DataState<CommentResponseModel>> getComments(String id) async {
    try {
      final httpResponse = await commentApiService.getComments(id);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        // TODO: save in db ....
        commentDao.insertAll(httpResponse.data.data!
            .map((element) => CommentEntity.formModel(element))
            .toList());
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
