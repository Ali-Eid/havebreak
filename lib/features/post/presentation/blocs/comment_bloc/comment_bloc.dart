import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/features/post/domain/models/comment_model/comment_model.dart';
import 'package:social_app/features/post/domain/usecase/post_usecase.dart';

part 'comment_event.dart';
part 'comment_state.dart';
part 'comment_bloc.freezed.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final GetCommentPostUsecase getCommentPostUsecase;
  CommentBloc({required this.getCommentPostUsecase})
      : super(const CommentState.loading()) {
    on<CommentEvent>((event, emit) async {
      await event.map(
        getComments: (value) async {
          emit(const CommentState.loading());
          final failureOrComments =
              await getCommentPostUsecase.execute((postId: value.postId));
          failureOrComments.when(
            (success) {
              emit(CommentState.loaded(comments: success));
            },
            (error) {
              emit(CommentState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
