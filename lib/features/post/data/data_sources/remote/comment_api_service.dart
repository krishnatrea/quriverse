import 'package:dio/dio.dart';
import 'package:quriverse/core/utils/constants/constants.dart';
import 'package:quriverse/features/post/data/models/comment_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'comment_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class CommentApiService {
  factory CommentApiService(Dio dio) = _CommentApiService;
  @GET('/posts/{id}/comments')
  Future<HttpResponse<CommentResponseModel>> getComments(@Path('id') String id);
}
