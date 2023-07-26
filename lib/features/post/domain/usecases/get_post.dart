import 'package:quriverse/core/resource/data_states.dart';
import 'package:quriverse/core/usecase/usecase.dart';
import 'package:quriverse/features/post/domain/repositories/post_repository.dart';

import '../../data/models/post_response_model.dart';

class GetPost implements UseCase<DataState<PostResponseModel>, String?> {
  final PostRepository postRepository;
  GetPost(this.postRepository);

  @override
  Future<DataState<PostResponseModel>> call({String? params}) async {
    return await postRepository.getPost(params!);
  }
}
