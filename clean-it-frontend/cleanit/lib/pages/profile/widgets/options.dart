import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:line_icons/line_icons.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Neumorphic(
                style: NeumorphicStyle(color: Colors.white),
                child: ListTile(
                  onTap: () {
                    // Get.back();
                  },
                  leading: Icon(Icons.local_laundry_service_outlined,
                      color: Colors.green),
                  title: txt('Scheduled Pickups',
                      size: 12, color: Colors.grey.shade700),
                  trailing: Container(
                      margin: EdgeInsets.only(right: 20),
                      child: txt('6',
                          color: Colors.green, size: 20, isBold: true)),
                )),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 10,
              top: 20,
            ),
            child: txt('Account Settings',
                color: Colors.grey.shade600, isBold: true, size: 13),
          ),
          Neumorphic(
            margin: EdgeInsets.only(top: 10),
            style: NeumorphicStyle(color: Colors.white),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    // Get.to(() => MyAccount());
                  },
                  title: Container(
                    child: txt('My Account',
                        size: 12, color: Colors.grey.shade700),
                  ),
                  leading: Icon(LineIcons.user, size: 18),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(thickness: 0.7, color: Colors.grey.shade300),
                ),
                ListTile(
                  onTap: () {
                    // Get.to(() => MasterPassword());
                  },
                  title: Container(
                    child: txt('My Pickups',
                        size: 12, color: Colors.grey.shade700),
                  ),
                  leading: Icon(Icons.delivery_dining_outlined, size: 18),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(thickness: 0.7, color: Colors.grey.shade300),
                ),
                ListTile(
                  onTap: () {
                    // Get.to(() => ResetMasterPassword());
                  },
                  title: Container(
                    child: txt(
                      'Address settings',
                      size: 12,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  leading: Icon(LineIcons.building, size: 18),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 10,
              top: 20,
            ),
            child: txt('About App',
                isBold: true, size: 12, color: Colors.grey.shade700),
          ),
          Neumorphic(
            margin: EdgeInsets.only(top: 10),
            style: NeumorphicStyle(color: Colors.white),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    // Get.to(() => AboutUs());
                  },
                  title: Container(
                    child: txt('About', size: 12, color: Colors.grey.shade700),
                  ),
                  leading: Icon(LineIcons.questionCircle, size: 18),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(thickness: 0.7, color: Colors.grey.shade300),
                ),
                ListTile(
                  onTap: () {
                    // Get.to(() => Privacy());
                  },
                  title: Container(
                    child: txt('Privacy Policy',
                        size: 12, color: Colors.grey.shade700),
                  ),
                  leading: Icon(Icons.privacy_tip_outlined, size: 18),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(thickness: 0.7, color: Colors.grey.shade300),
                ),
                ListTile(
                  onTap: () {
                    // Get.to(() => TermsConditions());
                  },
                  title: Container(
                    child: txt('Terms & Conditions',
                        size: 12, color: Colors.grey.shade700),
                  ),
                  leading: Icon(LineIcons.stickyNote, size: 18),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(thickness: 0.7, color: Colors.grey.shade300),
                ),
                ListTile(
                  title: Container(
                    child: txt('App Version (1.0.2)',
                        size: 12, color: Colors.grey.shade700),
                  ),
                  leading: Icon(LineIcons.infoCircle, size: 18),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 10,
              top: 20,
            ),
            child: txt('Logout',
                isBold: true, size: 12, color: Colors.grey.shade700),
          ),
          Neumorphic(
            margin: EdgeInsets.only(top: 10),
            style: NeumorphicStyle(color: Colors.white),
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  title: Container(
                    child: txt('Logout', size: 12, color: Colors.grey.shade700),
                  ),
                  leading: Icon(Icons.logout_outlined, size: 18),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
