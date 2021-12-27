import 'package:cleanit/pages/admin/widgets/pickupRequest.dart';
import 'package:cleanit/pages/home/widgets/sectionTitle.dart';
import 'package:cleanit/pages/profile/profile.dart';
import 'package:cleanit/utility/appbar.dart';
import 'package:cleanit/utility/colorUtil.dart';
import 'package:cleanit/utility/sizeUtil.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:line_icons/line_icons.dart';

class Admin extends StatelessWidget {
  const Admin({Key? key}) : super(key: key);

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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
            Neumorphic(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: EdgeInsets.all(8),
              style: NeumorphicStyle(color: Colors.white),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: h(context) * 0.1,
                      width: h(context) * 0.1,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green.shade50,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            txt('5', size: 16, isBold: true),
                            txt('Pickup\nToday',
                                size: 10,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: h(context) * 0.1,
                      width: h(context) * 0.1,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow.shade50,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            txt('2', size: 16, isBold: true),
                            txt('Pickup\n Requests',
                                size: 10,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: h(context) * 0.1,
                      width: h(context) * 0.1,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange.shade50,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            txt('₹ 200', size: 16, isBold: true),
                            txt('Revenue\nToday',
                                size: 10,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SectionTitle(title: 'Pickup Requests'),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) => PickUpRequests())
          ],
        ),
      ),
    );
  }
}
