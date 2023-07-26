import 'package:quriverse/core/resource/api_response_model.dart';
import 'package:quriverse/features/post/data/models/comment.dart';
import 'package:quriverse/features/post/data/models/user.dart';

class CommentResponseModel
    extends APIResponseModel<List<CommentModel>, UserModel, dynamic> {
  CommentResponseModel({List<CommentModel>? data, Map<String, UserModel>? user})
      : super(data: data, user: user);

  CommentResponseModel.fromJson(Map<String, dynamic> json) {
    data = (json['data'] as List<dynamic>)
        .map((val) => CommentModel.fromJson(val))
        .toList();
    user = (json['users'] as Map<String, dynamic>)
        .map((key, value) => MapEntry(key, UserModel.fromJson(value)));
  }
}
