import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import 'colorUtil.dart';

void bottomLoader() {
  Get.bottomSheet(
      Container(
        height: 50,
        color: Colors.white.withOpacity(0.9),
        child: SpinKitThreeBounce(
          color: AppColors.primaryPurple,
          size: 30,
        ),
      ),
      isDismissible: false,
      backgroundColor: AppColors.blue.withOpacity(0.5));
}

void closeKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}
