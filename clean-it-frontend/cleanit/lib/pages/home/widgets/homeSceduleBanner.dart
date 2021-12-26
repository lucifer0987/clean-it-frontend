import 'package:cleanit/pages/myorder/myOrders.dart';
import 'package:cleanit/utility/colorUtil.dart';
import 'package:cleanit/utility/sizeUtil.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

import 'pickupForm.dart';

class HomeSceduleBanner extends StatelessWidget {
  const HomeSceduleBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(color: Colors.white),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: h(context) * 0.2,
              width: w(context) * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/h1.png'))),
            ),
            Flexible(
              child: Column(
                children: [
                  Container(
                      child: txt(
                          'Get your pickup planned with super fast delivery',
                          size: 11,
                          color: Colors.grey.shade600,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.start)),
                  GestureDetector(
                      onTap: () {
                        Get.to(() => PickupForm());
                      },
                      child: Container(
                        width: w(context) * 0.4,
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(colors: [
                              AppColors.primaryBlue,
                              AppColors.primaryPurple
                            ])),
                        child: txt('Schedule',
                            size: 12,
                            textAlign: TextAlign.center,
                            color: Colors.white),
                      )),
                  GestureDetector(
                      onTap: () {
                        Get.to(() => MyOrders());
                      },
                      child: Container(
                        width: w(context) * 0.4,
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.green),
                        child: txt('My Orders',
                            size: 12,
                            textAlign: TextAlign.center,
                            color: Colors.white),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
