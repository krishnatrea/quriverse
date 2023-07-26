import 'package:quriverse/core/resource/data_states.dart';
import '../../data/models/post_response_model.dart';

abstract class PostRepository {
  Future<DataState<PostResponseModel>> getPost(String id);
}
