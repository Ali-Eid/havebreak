// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FailureModel _$FailureModelFromJson(Map<String, dynamic> json) {
  return _FailureModel.fromJson(json);
}

/// @nodoc
mixin _$FailureModel {
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  /// Serializes this FailureModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FailureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureModelCopyWith<FailureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureModelCopyWith<$Res> {
  factory $FailureModelCopyWith(
          FailureModel value, $Res Function(FailureModel) then) =
      _$FailureModelCopyWithImpl<$Res, FailureModel>;
  @useResult
  $Res call({String message, bool success});
}

/// @nodoc
class _$FailureModelCopyWithImpl<$Res, $Val extends FailureModel>
    implements $FailureModelCopyWith<$Res> {
  _$FailureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FailureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailureModelImplCopyWith<$Res>
    implements $FailureModelCopyWith<$Res> {
  factory _$$FailureModelImplCopyWith(
          _$FailureModelImpl value, $Res Function(_$FailureModelImpl) then) =
      __$$FailureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool success});
}

/// @nodoc
class __$$FailureModelImplCopyWithImpl<$Res>
    extends _$FailureModelCopyWithImpl<$Res, _$FailureModelImpl>
    implements _$$FailureModelImplCopyWith<$Res> {
  __$$FailureModelImplCopyWithImpl(
      _$FailureModelImpl _value, $Res Function(_$FailureModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FailureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_$FailureModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailureModelImpl implements _FailureModel {
  _$FailureModelImpl({this.message = '', this.success = false});

  factory _$FailureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureModelImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'FailureModel(message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, success);

  /// Create a copy of FailureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureModelImplCopyWith<_$FailureModelImpl> get copyWith =>
      __$$FailureModelImplCopyWithImpl<_$FailureModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureModelImplToJson(
      this,
    );
  }
}

abstract class _FailureModel implements FailureModel {
  factory _FailureModel({final String message, final bool success}) =
      _$FailureModelImpl;

  factory _FailureModel.fromJson(Map<String, dynamic> json) =
      _$FailureModelImpl.fromJson;

  @override
  String get message;
  @override
  bool get success;

  /// Create a copy of FailureModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureModelImplCopyWith<_$FailureModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
