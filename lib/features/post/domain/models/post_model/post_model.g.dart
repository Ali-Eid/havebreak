// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      tagName: json['tagName'] as String?,
      imageUser: json['imageUser'] as String? ?? "",
      time: json['time'] as String? ?? "",
      post: json['post'] as String? ?? "",
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      likesCount: (json['likesCount'] as num?)?.toInt() ?? 0,
      commentsCount: (json['commentsCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tagName': instance.tagName,
      'imageUser': instance.imageUser,
      'time': instance.time,
      'post': instance.post,
      'images': instance.images,
      'tags': instance.tags,
      'likesCount': instance.likesCount,
      'commentsCount': instance.commentsCount,
    };
