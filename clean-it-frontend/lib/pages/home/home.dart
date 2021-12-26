import 'package:cleanit/pages/home/widgets/homeHeaderOptions.dart';
import 'package:cleanit/pages/home/widgets/pickupTile.dart';
import 'package:cleanit/pages/home/widgets/plans.dart';
import 'package:cleanit/pages/profile/profile.dart';
import 'package:cleanit/utility/colorUtil.dart';
import 'package:cleanit/utility/data.dart';
import 'package:cleanit/utility/sizeUtil.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import 'widgets/homeSceduleBanner.dart';
import 'widgets/sectionTitle.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
        child: new Container(
          padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: new Padding(
            padding: const EdgeInsets.only(left: 0.0, top: 10.0, bottom: 0.0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 25, right: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                txt(
                                  'Clean It Up',
                                  isBold: true,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                txt(
                                  'Laundry Made Simple',
                                  isBold: false,
                                  color: Colors.white,
                                  size: 8,
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => Profile());
                              },
                              child: CircleAvatar(
                                radius: 17,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  LineIcons.user,
                                  color: Colors.grey.shade700,
                                  size: 16,
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ),
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [AppColors.primaryBlue, AppColors.primaryPurple]),
          ),
        ),
        preferredSize: new Size(MediaQuery.of(context).size.width, 60),
      ),
      
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeSceduleBanner(),
            SectionTitle(title: "Scheduled Pickup(s)"),
            SizedBox(
              height: 20,
            ),
            PickUpTile(
                title: 'Today@ 2:00 PM', subtitle: 'Neeraj Washing Center'),
            PickUpTile(
                title: '27th December, 2021',
                subtitle: 'Neeraj Washing Center'),
            SizedBox(
              height: 20,
            ),
            SectionTitle(title: "Featured Plans"),
            SizedBox(
              height: 20,
            ),
            Container(
              height: h(context) * 0.3,
              width: w(context),
              child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  clipBehavior: Clip.none,
                  shrinkWrap: true,
                  itemCount: plans.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        margin: index == plans.length - 1
                            ? EdgeInsets.only(right: 20)
                            : EdgeInsets.only(right: 0),
                        child: Plans(
                            imagefile: plans[index].imagefile,
                            title: plans[index].title,
                            subtitle: plans[index].subtitle),
                      )),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
