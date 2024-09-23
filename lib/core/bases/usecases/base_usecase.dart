import 'package:multiple_result/multiple_result.dart';

import '../models/failure_model/failure_model.dart';

abstract class BaseUseCase<In, Out> {
  Future<Result<Out, FailureModel>> execute(In input);
}

abstract class BaseUseCaseEmptyInput<Out> {
  Future<Result<Out, FailureModel>> execute();
}
