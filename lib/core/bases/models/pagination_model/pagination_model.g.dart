// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationModelImpl _$$PaginationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationModelImpl(
      totalCounts: (json['total'] as num?)?.toInt() ?? 1,
      totalPages: (json['pages'] as num?)?.toInt() ?? 1,
      currentPage: (json['page'] as num?)?.toInt() ?? 1,
      itemsCount: (json['per_page'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$PaginationModelImplToJson(
        _$PaginationModelImpl instance) =>
    <String, dynamic>{
      'total': instance.totalCounts,
      'pages': instance.totalPages,
      'page': instance.currentPage,
      'per_page': instance.itemsCount,
    };
