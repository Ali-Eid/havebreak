import 'package:freezed_annotation/freezed_annotation.dart';

import '../pagination_model/pagination_model.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class ResponseModel<T> with _$ResponseModel<T> {
  const factory ResponseModel({
    @Default('') String message,
    @Default(false) bool success,
    required T data,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ResponseModelFromJson(json, fromJsonT);
}

@Freezed(genericArgumentFactories: true)
class ResponsePaginationModel<T> with _$ResponsePaginationModel<T> {
  const factory ResponsePaginationModel({
    @Default('') String message,
    @Default('') String code,
    required T data,
    @Default(PaginationModel()) PaginationModel meta,
  }) = _ResponsePaginationModel;

  factory ResponsePaginationModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ResponsePaginationModelFromJson(json, fromJsonT);
}
