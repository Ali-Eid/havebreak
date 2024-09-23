import 'package:freezed_annotation/freezed_annotation.dart';

part 'static_model.freezed.dart';
part 'static_model.g.dart';

@freezed
abstract class StaticModel with _$StaticModel {
  const factory StaticModel({
    @Default(0) int id,
    @Default("") String name,
  }) = _StaticModel;
  factory StaticModel.fromJson(Map<String, dynamic> json) =>
      _$StaticModelFromJson(json);
}
