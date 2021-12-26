import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  String title;

  SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: txt('$title', color: Colors.grey.shade500, size: 12, isBold: true),
    );
  }
}
