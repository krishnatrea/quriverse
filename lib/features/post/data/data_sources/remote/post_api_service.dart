import 'package:dio/dio.dart';
import 'package:quriverse/features/post/data/models/post_response_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/utils/constants/constants.dart';
part 'post_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class PostApiService {
  factory PostApiService(Dio dio) = _PostApiService;

  @GET('/posts/{id}')
  Future<HttpResponse<PostResponseModel>> getPost(@Path("id") String id);
}
