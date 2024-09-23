// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FailureModelImpl _$$FailureModelImplFromJson(Map<String, dynamic> json) =>
    _$FailureModelImpl(
      message: json['message'] as String? ?? '',
      success: json['success'] as bool? ?? false,
    );

Map<String, dynamic> _$$FailureModelImplToJson(_$FailureModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
    };
