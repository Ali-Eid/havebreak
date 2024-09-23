import 'package:dio/dio.dart';

import '../cache/app_preferences.dart';

class GeneralInterceptor extends Interceptor {
  final AppPreferences appPreferences;

  GeneralInterceptor(this.appPreferences);
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String token = await appPreferences.getUserToken();
    if (token.isNotEmpty)
      options.headers["login-token"] =
          "297f27f2e2d204c839596e7930fe051262dc89e125733b5e19b6c4fb13f27cdf";
    super.onRequest(options, handler);
  }
}
