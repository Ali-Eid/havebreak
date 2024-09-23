import 'package:easy_localization/easy_localization.dart';

extension EmailNameExtension on String {
  String get nameBeforeAt {
    if (contains('@')) {
      return split('@').first;
    } else {
      return this; // Return the original string if no '@' is found
    }
  }
}
