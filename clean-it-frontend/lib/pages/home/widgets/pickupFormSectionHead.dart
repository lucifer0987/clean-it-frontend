import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';

class PickUpFormSectionHead extends StatelessWidget {
  String head;
  PickUpFormSectionHead({Key? key, required this.head}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      child: txt('$head', color: Colors.grey.shade600, isBold: true,
      ),
    );
  }
}
