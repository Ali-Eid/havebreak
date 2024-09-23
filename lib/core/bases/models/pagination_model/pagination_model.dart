import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@freezed
abstract class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    @Default(1) @JsonKey(name: "total") int totalCounts,
    @Default(1) @JsonKey(name: "pages") int totalPages,
    @Default(1) @JsonKey(name: "page") int currentPage,
    @Default(10) @JsonKey(name: "per_page") int itemsCount,
  }) = _PaginationModel;
  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}
