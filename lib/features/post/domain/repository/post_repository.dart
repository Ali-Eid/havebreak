import 'package:multiple_result/multiple_result.dart';
import 'package:social_app/core/bases/models/failure_model/failure_model.dart';
import 'package:social_app/features/post/domain/models/comment_model/comment_model.dart';

abstract class PostRepository {
  Future<Result<List<CommentModel>, FailureModel>> getComments(
      {required int postId});
}
