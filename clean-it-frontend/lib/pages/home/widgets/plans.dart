import 'package:cleanit/utility/sizeUtil.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Plans extends StatelessWidget {
  String imagefile;
  String title;
  String subtitle;

  Plans(
      {Key? key,
      required this.imagefile,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Neumorphic(
          margin: EdgeInsets.only(left: 20),
          style: NeumorphicStyle(color: Colors.white),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: h(context) * 0.16,
                  width: w(context) * 0.46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/$imagefile'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, top: 5),
                  child: txt('$title',
                      color: Colors.grey.shade500, isBold: true, size: 13),
                ),
                Container(
                  width: w(context) * 0.33,
                  margin: EdgeInsets.only(left: 5, top: 5),
                  child: txt('$subtitle',
                      overflow: TextOverflow.visible,
                      color: Colors.grey.shade500,
                      textAlign: TextAlign.left,
                      isBold: false,
                      size: 11),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
