import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/string_manager.dart';

part 'failure_model.freezed.dart';
part 'failure_model.g.dart';

@freezed
abstract class FailureModel with _$FailureModel {
  factory FailureModel({
    @Default('') String message,
    @Default(false) bool success,
  }) = _FailureModel;
  factory FailureModel.fromJson(Map<String, dynamic> json) =>
      _$FailureModelFromJson(json);
}

Map<String, String> defaultError = {'message': AppStrings().apiFailureMessage};
