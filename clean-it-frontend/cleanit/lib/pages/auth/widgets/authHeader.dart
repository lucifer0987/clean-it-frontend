import 'package:cleanit/utility/colorUtil.dart';
import 'package:cleanit/utility/sizeUtil.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class AuthHeader extends StatelessWidget {
  String headText;
  String subHeading;
  AuthHeader({Key? key, required this.headText, required this.subHeading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(colors: [
                        AppColors.primaryBlue,
                        AppColors.primaryPurple
                      ])),
                  child: Row(
                    children: [
                      Icon(
                        LineIcons.arrowLeft,
                        color: Colors.white,
                        size: 18,
                      ),
                      Container(
                        child: txt(' back', color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: txt('$headText',
                  color: AppColors.txtColor.withOpacity(0.8),
                  size: 18,
                  isBold: true),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: txt('$subHeading',
                  color: AppColors.txtColor.withOpacity(0.8), isBold: false),
            ),
            Container(
              height: h(context) * 0.3,
              width: w(context),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn3d.iconscout.com/3d/premium/thumb/businessman-launching-new-business-2937685-2426387.png'),
                      fit: BoxFit.contain)),
            )
          ],
        ),
      ),
    );
  }
}
