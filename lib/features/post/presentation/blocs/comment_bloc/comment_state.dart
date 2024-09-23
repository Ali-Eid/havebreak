part of 'comment_bloc.dart';

@freezed
class CommentState with _$CommentState {
  const factory CommentState.loading() = _Loading;
  const factory CommentState.loaded({required List<CommentModel> comments}) =
      _Loaded;
  const factory CommentState.error({required String message}) = _Error;
}
