import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quriverse/features/post/domain/entities/comment.dart';
import 'package:quriverse/features/post/domain/usecases/get_comments.dart';
import 'package:quriverse/features/post/domain/usecases/get_saved_comments.dart';

class CommentsCubit extends Cubit<List<CommentEntity>> {
  final GetComments getCommentsUseCase;
  final GetSavedComments getSavedComments;
  CommentsCubit(this.getCommentsUseCase, this.getSavedComments) : super([]);
  void getComments(String id) async {
    var savedComments = await getSavedComments(params: id);
    log(savedComments.toString());
    emit(savedComments);
    var comments = await getCommentsUseCase(params: id);
    List<CommentEntity> fetchedComments = [];
    comments.data?.data!.forEach((comment) async {
      comment.user = await comments.data!.user![comment.userId!];
      fetchedComments.add(comment);
    });
    if (fetchedComments.isEmpty) {
      emit(fetchedComments);
    }
  }
}
