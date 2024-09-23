import 'package:dio/dio.dart';
import 'package:social_app/features/post/domain/models/comment_model/comment_model.dart';
import '../../../../core/constants/endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'post_api.g.dart';

@RestApi(baseUrl: "")
abstract class PostServiceClient {
  factory PostServiceClient(Dio dio, {String baseUrl}) = _PostServiceClient;

//Brand blocks
  @GET(Endpoints.COMMENTS)
  Future<HttpResponse<List<CommentModel>>> getComments({
    @Query("postId") required int postId,
  });
}
