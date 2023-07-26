// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:quriverse/core/resource/data_states.dart';
import 'package:quriverse/core/usecase/usecase.dart';
import 'package:quriverse/features/post/data/models/comment_response_model.dart';
import 'package:quriverse/features/post/domain/repositories/comment_repository.dart';

class GetComments extends UseCase<DataState<CommentResponseModel>, String?> {
  final CommentRepository commentRepository;
  GetComments(
    this.commentRepository,
  );

  @override
  Future<DataState<CommentResponseModel>> call({String? params}) {
    return commentRepository.getComments(params!);
  }
}
