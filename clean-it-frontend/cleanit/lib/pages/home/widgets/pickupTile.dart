import 'package:cleanit/pages/myorder/widgets/orderDetails.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class PickUpTile extends StatelessWidget {
  String title, subtitle;
  PickUpTile({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Neumorphic(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            style: NeumorphicStyle(color: Colors.white),
            child: Container(
                child: ListTile(
              title: txt(''),
              subtitle: txt(''),
            ))),
        Neumorphic(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            style: NeumorphicStyle(color: Colors.white.withOpacity(0.92)),
            child: ListTile(
              onTap: () {
                Get.to(() => OrderDetails());
              },
              title: txt('$title', size: 12, color: Colors.green, isBold: true),
              subtitle: txt('$subtitle', size: 11, color: Colors.grey.shade600),
            )),
      ],
    );
  }
}
