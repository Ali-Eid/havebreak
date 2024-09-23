// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseModelImpl<T> _$$ResponseModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ResponseModelImpl<T>(
      message: json['message'] as String? ?? '',
      success: json['success'] as bool? ?? false,
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$$ResponseModelImplToJson<T>(
  _$ResponseModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
      'data': toJsonT(instance.data),
    };

_$ResponsePaginationModelImpl<T> _$$ResponsePaginationModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ResponsePaginationModelImpl<T>(
      message: json['message'] as String? ?? '',
      code: json['code'] as String? ?? '',
      data: fromJsonT(json['data']),
      meta: json['meta'] == null
          ? const PaginationModel()
          : PaginationModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponsePaginationModelImplToJson<T>(
  _$ResponsePaginationModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'data': toJsonT(instance.data),
      'meta': instance.meta,
    };
