import 'package:cleanit/pages/profile/widgets/options.dart';
import 'package:cleanit/utility/appbar.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: cleanItAppBar(
                    headText: 'My Profile',
                    subHeading: 'Hi User ! Manage your profile settings here',
                  ),
                ),
                Options(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
