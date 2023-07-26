import 'package:quriverse/core/resource/api_response_model.dart';
import 'package:quriverse/features/post/data/models/post.dart';
import 'package:quriverse/features/post/data/models/user.dart';

class PostResponseModel
    extends APIResponseModel<PostModel, UserModel, dynamic> {
  PostResponseModel({
    PostModel? data,
    Map<String, UserModel>? user,
  }) : super(data: data, user: user);

  PostResponseModel.fromJson(Map<String, dynamic> json) {
    data = PostModel.fromMap(json['data']);
    user = (json['users'] as Map<String, dynamic>)
        .map((key, value) => MapEntry(key, UserModel.fromJson(value)));
  }
}
