import 'package:flutter/material.dart';

import 'app_text.dart';

class Style {
  Style._();

  static const TextStyle headingText = TextStyle(
    fontFamily: "Lato",
    fontSize: AppFont.size_20,
    fontWeight: AppFont.weightBlack,
    color: AppFont.colorWhite,
  );
  static const TextStyle subText = TextStyle(
    fontFamily: "Lato",
    fontSize: AppFont.size_16,
    fontWeight: AppFont.weightRegular,
    color: AppFont.colorWhite,
  );
  static const TextStyle bodyText = TextStyle(
    fontFamily: "Lato",
    fontSize: AppFont.size_14,
    fontWeight: AppFont.weightRegular,
    color: AppFont.colorWhite,
  );
}