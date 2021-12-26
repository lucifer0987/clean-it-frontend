import 'package:flutter/material.dart';

import 'widgets/authHeader.dart';

class SiginIn extends StatelessWidget {
  const SiginIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthHeader(
              headText: "Register Account",
              subHeading:
                  "Create new account with us, and start your seamless cleaning journey today",
            )
          ],
        ),
      ),
    );
  }
}
