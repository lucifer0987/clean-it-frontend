import 'package:cleanit/pages/auth/widgets/signup.dart';
import 'package:cleanit/pages/home/home.dart';
import 'package:cleanit/utility/colorUtil.dart';
import 'package:cleanit/utility/sizeUtil.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class PickupScheduled extends StatelessWidget {
  const PickupScheduled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: h(context),
                    width: w(context),
                    margin: EdgeInsets.only(top: h(context) * 0.16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(200, 200),
                        ),
                        gradient: LinearGradient(colors: [
                          AppColors.primaryPurple,
                          AppColors.primaryBlue
                        ])),
                    child: Container(
                      // decoration: BoxDecoration(color: Colors.white),
                      margin: EdgeInsets.only(
                          top: h(context) * 0.2, left: 30, right: 30),
                      child: Column(
                        children: [
                          Container(
                            child: txt(
                                'Woohoo! your pick is scheduled successfully !',
                                color: Colors.white,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                isBold: true,
                                size: 15),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: txt('Reference id #18293123',
                                color: Colors.white,
                                isBold: false,
                                textAlign: TextAlign.center,
                                size: 12),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextButton(
                              onPressed: () {
                                Get.to(() => Home());
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.green,
                                ),
                                width: w(context),
                                child: txt('My Orders',
                                    color: Colors.white,
                                    textAlign: TextAlign.center),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: h(context) * 0.3,
                    width: w(context),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/pickup.png'),
                            fit: BoxFit.contain)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
