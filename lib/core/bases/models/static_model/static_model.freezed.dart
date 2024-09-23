// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'static_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StaticModel _$StaticModelFromJson(Map<String, dynamic> json) {
  return _StaticModel.fromJson(json);
}

/// @nodoc
mixin _$StaticModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this StaticModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaticModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaticModelCopyWith<StaticModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaticModelCopyWith<$Res> {
  factory $StaticModelCopyWith(
          StaticModel value, $Res Function(StaticModel) then) =
      _$StaticModelCopyWithImpl<$Res, StaticModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$StaticModelCopyWithImpl<$Res, $Val extends StaticModel>
    implements $StaticModelCopyWith<$Res> {
  _$StaticModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaticModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaticModelImplCopyWith<$Res>
    implements $StaticModelCopyWith<$Res> {
  factory _$$StaticModelImplCopyWith(
          _$StaticModelImpl value, $Res Function(_$StaticModelImpl) then) =
      __$$StaticModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$StaticModelImplCopyWithImpl<$Res>
    extends _$StaticModelCopyWithImpl<$Res, _$StaticModelImpl>
    implements _$$StaticModelImplCopyWith<$Res> {
  __$$StaticModelImplCopyWithImpl(
      _$StaticModelImpl _value, $Res Function(_$StaticModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaticModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$StaticModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaticModelImpl implements _StaticModel {
  const _$StaticModelImpl({this.id = 0, this.name = ""});

  factory _$StaticModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaticModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'StaticModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaticModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of StaticModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaticModelImplCopyWith<_$StaticModelImpl> get copyWith =>
      __$$StaticModelImplCopyWithImpl<_$StaticModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaticModelImplToJson(
      this,
    );
  }
}

abstract class _StaticModel implements StaticModel {
  const factory _StaticModel({final int id, final String name}) =
      _$StaticModelImpl;

  factory _StaticModel.fromJson(Map<String, dynamic> json) =
      _$StaticModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of StaticModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaticModelImplCopyWith<_$StaticModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
