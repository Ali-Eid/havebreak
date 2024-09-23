import 'package:multiple_result/src/result.dart';
import 'package:social_app/core/bases/models/failure_model/failure_model.dart';
import 'package:social_app/core/bases/usecases/base_usecase.dart';
import 'package:social_app/features/post/domain/models/comment_model/comment_model.dart';
import 'package:social_app/features/post/domain/repository/post_repository.dart';

class GetCommentPostUsecase
    implements BaseUseCase<({int postId}), List<CommentModel>> {
  final PostRepository repository;

  GetCommentPostUsecase({required this.repository});
  @override
  Future<Result<List<CommentModel>, FailureModel>> execute(
      ({int postId}) input) async {
    return await repository.getComments(postId: input.postId);
  }
}
