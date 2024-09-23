import 'package:dio/dio.dart';
import 'package:multiple_result/src/result.dart';
import 'package:social_app/core/bases/models/failure_model/failure_model.dart';
import 'package:social_app/features/post/data/datasource/post_api.dart';
import 'package:social_app/features/post/domain/models/comment_model/comment_model.dart';
import 'package:social_app/features/post/domain/repository/post_repository.dart';

import '../../../../core/constants/string_manager.dart';
import '../../../../core/network/network_info.dart';

class PostRepositoryImpl implements PostRepository {
  final PostServiceClient postServiceClient;
  final NetworkInfo networkInfo;

  PostRepositoryImpl(
      {required this.postServiceClient, required this.networkInfo});
  @override
  Future<Result<List<CommentModel>, FailureModel>> getComments(
      {required int postId}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await postServiceClient.getComments(postId: postId);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().checkInternet));
    }
  }
}
