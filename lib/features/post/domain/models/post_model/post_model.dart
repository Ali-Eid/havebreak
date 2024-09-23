import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
abstract class PostModel with _$PostModel {
  factory PostModel({
    @Default(0) int id,
    @Default("") String name,
    String? tagName,
    @Default("") String imageUser,
    @Default("") String time,
    @Default("") String post,
    @Default([]) List<String> images,
    @Default([]) List<String> tags,
    @Default(0) int likesCount,
    @Default(0) int commentsCount,
  }) = _PostModel;
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
