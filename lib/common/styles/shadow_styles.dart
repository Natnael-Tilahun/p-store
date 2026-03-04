import 'package:flutter/material.dart';
import 'package:p_store/utils/constants/colors.dart';

class TShadowStyles {
  static final verticalProductShadow = BoxShadow(
    color: TColors.darkGrey.withValues(alpha: 0.1),
    offset: Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
  );

  static final horizontalProductShadow = BoxShadow(
    color: TColors.darkGrey.withValues(alpha: 0.1),
    offset: Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
  );
}
