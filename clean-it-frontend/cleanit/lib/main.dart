import 'package:cleanit/pages/admin/admin.dart';
import 'package:cleanit/pages/auth/widgets/signIn.dart';
import 'package:cleanit/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'utility/colorUtil.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => GetMaterialApp(
              title: 'Clean It',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: AppColors.primaryBlue,
              ),
              home: SignIn(),
            ));
  }
}
