import 'package:flutter/cupertino.dart';
import 'package:k_store/utils/constants/sizes.dart';

class KSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: KSizes.appBarHeight,
    left: KSizes.defaultSpace,
    bottom: KSizes.defaultSpace,
    right: KSizes.defaultSpace,
  );
}