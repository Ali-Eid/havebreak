import 'dart:ui';

class ColorManager {
  //Base
  static Color white = Hex16Color.fromHex("#FFFFFF");
  static Color black = Hex16Color.fromHex("#000000");

  static Color primary = Hex16Color.fromHex("#05101C");
  static Color storyBackGround1 =
      Hex16Color.fromHex("#435A73").withOpacity(0.3);
  static Color storyBackGround2 =
      Hex16Color.fromHex("#182A3E").withOpacity(0.3);
  static Color backgroundContainer = Hex16Color.fromHex("#F1F1F1");
  static Color tagTextColor = Hex16Color.fromHex("#7662B3");

  //

  static Color red = Hex16Color.fromHex("#E84545");
  static Color green = Hex16Color.fromHex("#64BA02");

  static Color shadowColor = Hex16Color.fromHex("#4F575E");
  static Color darkGrey = Hex16Color.fromHex("#363636");
  //Grey
  static Color gray = Hex16Color.fromHex("#05101C").withOpacity(.6);
  static Color grey1 = Hex16Color.fromHex("#8E8E93");
  static Color grey2 = Hex16Color.fromHex("#AEAEB2");
  static Color grey3 = Hex16Color.fromHex("#C7C7CC");
  static Color grey4 = Hex16Color.fromHex("#D1D1D6");
  static Color grey5 = Hex16Color.fromHex("#E5E5EA");
  static Color grey6 = Hex16Color.fromHex("#F2F2F7");
  //separators
  static Color opaque = Hex16Color.fromHex("#C6C6C8");
  static Color nonOpaque = Hex16Color.fromHex("#EFEFEF");
  static Color background = Hex16Color.fromHex("#FCFCFC");

  // labels
  static Color labelSecondary = Hex16Color.fromHex("#8A8A8E");
  static Color labelTertiary = Hex16Color.fromHex("#C5C5C7");
  static Color labelQuarternary = Hex16Color.fromHex("#F8F8F8");

  //Fills
  static Color fillPrimary = Hex16Color.fromHex("#E4E4E6");
  static Color fillSecondary = Hex16Color.fromHex("#E9E9EB");
  static Color fillTertiary = Hex16Color.fromHex("#EFEFF0");
  static Color fillQuarternary = Hex16Color.fromHex("#F4F4F5");
}

extension Hex16Color on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
