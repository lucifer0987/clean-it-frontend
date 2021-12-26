import 'package:cleanit/utility/sizeUtil.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import 'colorUtil.dart';

cleanItAppBar({context, headText, subHeading}) {
  return SafeArea(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
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
                overflow: TextOverflow.visible,
                color: AppColors.txtColor.withOpacity(0.8),
                isBold: false),
          ),
        ],
      ),
    ),
  );
}
