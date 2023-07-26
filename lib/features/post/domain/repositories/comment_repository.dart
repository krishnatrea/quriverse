
import 'package:quriverse/core/resource/data_states.dart';
import 'package:quriverse/features/post/data/models/comment_response_model.dart';

abstract class CommentRepository {
  Future<DataState<CommentResponseModel>> getComments(String id);
}
