import 'dart:io';
import 'package:cleanit/db/boxes.dart';
import 'package:cleanit/db/hiveHelper.dart';
import 'package:cleanit/models/loginInfo.dart';
import 'package:cleanit/models/pickup.dart';
import 'package:cleanit/models/user.dart';
import 'package:cleanit/pages/admin/admin.dart';
import 'package:cleanit/pages/auth/widgets/signIn.dart';
import 'package:cleanit/pages/auth/widgets/signup.dart';
import 'package:cleanit/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'utility/colorUtil.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory directory = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(directory.path);

  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(LoginInfoAdapter());
  Hive.registerAdapter(PickUpAdapter());
  Hive.registerAdapter(PickupListAdapter());

  Hive.registerAdapter(PickUpItemsAdapter());
  Hive.registerAdapter(StatusAdapter());
  await Hive.openBox<User>('user');
  await Hive.openBox<LoginInfo>('loginInfo');
  await Hive.openBox<PickupList>('pickuplist');
  initBoxes();

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
              home: checkLoginStatus(),
            ));
  }
}
