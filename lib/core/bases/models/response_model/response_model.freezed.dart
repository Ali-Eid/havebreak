// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseModel<T> _$ResponseModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ResponseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ResponseModel<T> {
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;

  /// Serializes this ResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseModelCopyWith<T, ResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<T, $Res> {
  factory $ResponseModelCopyWith(
          ResponseModel<T> value, $Res Function(ResponseModel<T>) then) =
      _$ResponseModelCopyWithImpl<T, $Res, ResponseModel<T>>;
  @useResult
  $Res call({String message, bool success, T data});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<T, $Res, $Val extends ResponseModel<T>>
    implements $ResponseModelCopyWith<T, $Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseModelImplCopyWith<T, $Res>
    implements $ResponseModelCopyWith<T, $Res> {
  factory _$$ResponseModelImplCopyWith(_$ResponseModelImpl<T> value,
          $Res Function(_$ResponseModelImpl<T>) then) =
      __$$ResponseModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String message, bool success, T data});
}

/// @nodoc
class __$$ResponseModelImplCopyWithImpl<T, $Res>
    extends _$ResponseModelCopyWithImpl<T, $Res, _$ResponseModelImpl<T>>
    implements _$$ResponseModelImplCopyWith<T, $Res> {
  __$$ResponseModelImplCopyWithImpl(_$ResponseModelImpl<T> _value,
      $Res Function(_$ResponseModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
    Object? data = freezed,
  }) {
    return _then(_$ResponseModelImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ResponseModelImpl<T> implements _ResponseModel<T> {
  const _$ResponseModelImpl(
      {this.message = '', this.success = false, required this.data});

  factory _$ResponseModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ResponseModelImplFromJson(json, fromJsonT);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool success;
  @override
  final T data;

  @override
  String toString() {
    return 'ResponseModel<$T>(message: $message, success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseModelImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, success, const DeepCollectionEquality().hash(data));

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseModelImplCopyWith<T, _$ResponseModelImpl<T>> get copyWith =>
      __$$ResponseModelImplCopyWithImpl<T, _$ResponseModelImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ResponseModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _ResponseModel<T> implements ResponseModel<T> {
  const factory _ResponseModel(
      {final String message,
      final bool success,
      required final T data}) = _$ResponseModelImpl<T>;

  factory _ResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ResponseModelImpl<T>.fromJson;

  @override
  String get message;
  @override
  bool get success;
  @override
  T get data;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseModelImplCopyWith<T, _$ResponseModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponsePaginationModel<T> _$ResponsePaginationModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ResponsePaginationModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ResponsePaginationModel<T> {
  String get message => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;
  PaginationModel get meta => throw _privateConstructorUsedError;

  /// Serializes this ResponsePaginationModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ResponsePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponsePaginationModelCopyWith<T, ResponsePaginationModel<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsePaginationModelCopyWith<T, $Res> {
  factory $ResponsePaginationModelCopyWith(ResponsePaginationModel<T> value,
          $Res Function(ResponsePaginationModel<T>) then) =
      _$ResponsePaginationModelCopyWithImpl<T, $Res,
          ResponsePaginationModel<T>>;
  @useResult
  $Res call({String message, String code, T data, PaginationModel meta});

  $PaginationModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$ResponsePaginationModelCopyWithImpl<T, $Res,
        $Val extends ResponsePaginationModel<T>>
    implements $ResponsePaginationModelCopyWith<T, $Res> {
  _$ResponsePaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponsePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? data = freezed,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PaginationModel,
    ) as $Val);
  }

  /// Create a copy of ResponsePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<$Res> get meta {
    return $PaginationModelCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponsePaginationModelImplCopyWith<T, $Res>
    implements $ResponsePaginationModelCopyWith<T, $Res> {
  factory _$$ResponsePaginationModelImplCopyWith(
          _$ResponsePaginationModelImpl<T> value,
          $Res Function(_$ResponsePaginationModelImpl<T>) then) =
      __$$ResponsePaginationModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String message, String code, T data, PaginationModel meta});

  @override
  $PaginationModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$$ResponsePaginationModelImplCopyWithImpl<T, $Res>
    extends _$ResponsePaginationModelCopyWithImpl<T, $Res,
        _$ResponsePaginationModelImpl<T>>
    implements _$$ResponsePaginationModelImplCopyWith<T, $Res> {
  __$$ResponsePaginationModelImplCopyWithImpl(
      _$ResponsePaginationModelImpl<T> _value,
      $Res Function(_$ResponsePaginationModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ResponsePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? data = freezed,
    Object? meta = null,
  }) {
    return _then(_$ResponsePaginationModelImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PaginationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ResponsePaginationModelImpl<T> implements _ResponsePaginationModel<T> {
  const _$ResponsePaginationModelImpl(
      {this.message = '',
      this.code = '',
      required this.data,
      this.meta = const PaginationModel()});

  factory _$ResponsePaginationModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ResponsePaginationModelImplFromJson(json, fromJsonT);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String code;
  @override
  final T data;
  @override
  @JsonKey()
  final PaginationModel meta;

  @override
  String toString() {
    return 'ResponsePaginationModel<$T>(message: $message, code: $code, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponsePaginationModelImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code,
      const DeepCollectionEquality().hash(data), meta);

  /// Create a copy of ResponsePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponsePaginationModelImplCopyWith<T, _$ResponsePaginationModelImpl<T>>
      get copyWith => __$$ResponsePaginationModelImplCopyWithImpl<T,
          _$ResponsePaginationModelImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ResponsePaginationModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _ResponsePaginationModel<T>
    implements ResponsePaginationModel<T> {
  const factory _ResponsePaginationModel(
      {final String message,
      final String code,
      required final T data,
      final PaginationModel meta}) = _$ResponsePaginationModelImpl<T>;

  factory _ResponsePaginationModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ResponsePaginationModelImpl<T>.fromJson;

  @override
  String get message;
  @override
  String get code;
  @override
  T get data;
  @override
  PaginationModel get meta;

  /// Create a copy of ResponsePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponsePaginationModelImplCopyWith<T, _$ResponsePaginationModelImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
