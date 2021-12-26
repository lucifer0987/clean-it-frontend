import 'package:cleanit/pages/auth/controllers/authController.dart';
import 'package:cleanit/pages/auth/widgets/signIn.dart';
import 'package:cleanit/utility/colorUtil.dart';
import 'package:cleanit/utility/sizeUtil.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class SiginUp extends StatelessWidget {
  SiginUp({Key? key}) : super(key: key);
  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: authController.signupFormKey,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: h(context),
                      width: w(context),
                      margin: EdgeInsets.only(top: h(context) * 0.16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(200, 200),
                          ),
                          gradient: LinearGradient(colors: [
                            AppColors.primaryPurple,
                            AppColors.primaryBlue
                          ])),
                      child: Container(
                        // decoration: BoxDecoration(color: Colors.white),
                        margin: EdgeInsets.only(
                            top: h(context) * 0.2, left: 30, right: 30),
                        child: Column(
                          children: [
                            Container(
                              child: txt('Register Account',
                                  color: Colors.white, isBold: true, size: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: txt(
                                  'Create your free account with us and start your seamless cleaning journey now ',
                                  color: Colors.white,
                                  isBold: false,
                                  textAlign: TextAlign.center,
                                  size: 12),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      // color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(10, 10))),
                                  // margin: EdgeInsets.only(left: 10),
                                  child: TextFormField(
                                    onChanged: (val) {
                                      authController.phone.value = val;
                                    },
                                    onSaved: (val) {
                                      authController.phone.value =
                                          val.toString();
                                    },
                                    style: GoogleFonts.getFont('Open Sans',
                                        fontSize: 13, color: Colors.white),
                                    decoration: InputDecoration(
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                        labelText: 'Phone number',
                                        contentPadding:
                                            EdgeInsets.only(left: 20),
                                        suffixIcon: Icon(LineIcons.phone,
                                            color: Colors.white, size: 12),
                                        labelStyle: GoogleFonts.getFont(
                                            'Open Sans',
                                            fontSize: 12,
                                            color: Colors.grey.shade50),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        hintText: '+91 XXXXXXXXXX',
                                        hintStyle: GoogleFonts.getFont(
                                            'Open Sans',
                                            fontSize: 12,
                                            color: Colors.grey.shade50)),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),

                                // email
                                Container(
                                  decoration: BoxDecoration(
                                      // color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(10, 10))),
                                  // margin: EdgeInsets.only(left: 10),
                                  child: TextFormField(
                                    style: GoogleFonts.getFont('Open Sans',
                                        fontSize: 13, color: Colors.white),
                                    onChanged: (val) {
                                      authController.email.value = val;
                                    },
                                    onSaved: (val) {
                                      authController.email.value =
                                          val.toString();
                                    },
                                    decoration: InputDecoration(
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                        labelText: 'Email Address',
                                        contentPadding:
                                            EdgeInsets.only(left: 20),
                                        suffixIcon: Icon(LineIcons.inbox,
                                            color: Colors.white, size: 12),
                                        labelStyle: GoogleFonts.getFont(
                                            'Open Sans',
                                            fontSize: 12,
                                            color: Colors.grey.shade50),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        hintText: 'Jogn@gmail.com',
                                        hintStyle: GoogleFonts.getFont(
                                            'Open Sans',
                                            fontSize: 12,
                                            color: Colors.grey.shade50)),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      // color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(10, 10))),
                                  // margin: EdgeInsets.only(left: 10),
                                  child: TextFormField(
                                    onChanged: (val) {
                                      authController.password.value = val;
                                    },
                                    onSaved: (val) {
                                      authController.password.value =
                                          val.toString();
                                    },
                                    style: GoogleFonts.getFont('Open Sans',
                                        fontSize: 13, color: Colors.white),
                                    decoration: InputDecoration(
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                        labelText: 'Password',
                                        contentPadding:
                                            EdgeInsets.only(left: 20),
                                        suffixIcon: Icon(LineIcons.eyeAlt,
                                            color: Colors.white, size: 12),
                                        labelStyle: GoogleFonts.getFont(
                                            'Open Sans',
                                            fontSize: 12,
                                            color: Colors.grey.shade50),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        hintText: 'XXXXXXXXXX',
                                        hintStyle: GoogleFonts.getFont(
                                            'Open Sans',
                                            fontSize: 12,
                                            color: Colors.grey.shade50)),
                                  ),
                                ),

                                SizedBox(
                                  height: 25,
                                ),
                                TextButton(
                                    onPressed: () {
                                      authController.registerUser();
                                    },
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.shade400,
                                              blurRadius: 2,
                                              spreadRadius: 0.1)
                                        ],
                                        color: Colors.green,
                                      ),
                                      width: w(context),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          txt('Lets go  ',
                                              color: Colors.white,
                                              textAlign: TextAlign.center),
                                          Icon(
                                            LineIcons.arrowRight,
                                            color: Colors.white,
                                            size: 15,
                                          )
                                        ],
                                      ),
                                    )),

                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      txt("Already have an account",
                                          color: Colors.white),
                                      TextButton(
                                          onPressed: () {
                                            Get.offAll(() => SignIn());
                                          },
                                          child: txt('login now',
                                              isBold: true,
                                              decoration:
                                                  TextDecoration.underline,
                                              color:
                                                  Colors.greenAccent.shade100))
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: h(context) * 0.3,
                      width: w(context),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/signup.png'),
                              fit: BoxFit.contain)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
