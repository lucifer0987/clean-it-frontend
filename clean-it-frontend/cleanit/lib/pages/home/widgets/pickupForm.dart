import 'package:cleanit/pages/home/widgets/pickupFormSectionHead.dart';
import 'package:cleanit/utility/appbar.dart';
import 'package:cleanit/utility/colorUtil.dart';
import 'package:cleanit/utility/sizeUtil.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pickupFormStep2.dart';

class PickupForm extends StatelessWidget {
  const PickupForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: cleanItAppBar(
                    context: context,
                    headText: 'Schedule Pickup (Step 1/3)',
                    subHeading:
                        "Provide your laundry details and pick a date and time for pickup of your items by our delivery person. "),
              ),
              PickUpFormSectionHead(head: 'Contact Details'),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'John Doe',
                    labelStyle: GoogleFonts.getFont('Open Sans',
                        fontSize: 13, color: Colors.grey.shade500),
                    hintStyle: GoogleFonts.getFont('Open Sans',
                        fontSize: 13, color: Colors.grey.shade500),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: EdgeInsets.only(
                      left: 10,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Contact No',
                    hintText: '+91 XXXXXXXXXX',
                    labelStyle: GoogleFonts.getFont('Open Sans',
                        fontSize: 13, color: Colors.grey.shade500),
                    hintStyle: GoogleFonts.getFont('Open Sans',
                        fontSize: 13, color: Colors.grey.shade500),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: EdgeInsets.only(
                      left: 10,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              PickUpFormSectionHead(head: 'Address Details'),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Address Line 1',
                    hintText: 'Eg. Near vinayak plaza, green street',
                    labelStyle: GoogleFonts.getFont('Open Sans',
                        fontSize: 13, color: Colors.grey.shade500),
                    hintStyle: GoogleFonts.getFont('Open Sans',
                        fontSize: 13, color: Colors.grey.shade500),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: EdgeInsets.only(
                      left: 10,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Address Line 2',
                    hintText: 'Eg. kripla market, picks area',
                    labelStyle: GoogleFonts.getFont('Open Sans',
                        fontSize: 13, color: Colors.grey.shade500),
                    hintStyle: GoogleFonts.getFont('Open Sans',
                        fontSize: 13, color: Colors.grey.shade500),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: EdgeInsets.only(
                      left: 10,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Zip Code',
                          hintText: 'Eg. 221007',
                          labelStyle: GoogleFonts.getFont('Open Sans',
                              fontSize: 13, color: Colors.grey.shade500),
                          hintStyle: GoogleFonts.getFont('Open Sans',
                              fontSize: 13, color: Colors.grey.shade500),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.only(
                            left: 10,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(top: 20, right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'City',
                          hintText: 'Eg. Delhi',
                          labelStyle: GoogleFonts.getFont('Open Sans',
                              fontSize: 13, color: Colors.grey.shade500),
                          hintStyle: GoogleFonts.getFont('Open Sans',
                              fontSize: 13, color: Colors.grey.shade500),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.only(
                            left: 10,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'State',
                    hintText: 'Eg. Madhya Pradesh',
                    labelStyle: GoogleFonts.getFont('Open Sans',
                        fontSize: 13, color: Colors.grey.shade500),
                    hintStyle: GoogleFonts.getFont('Open Sans',
                        fontSize: 13, color: Colors.grey.shade500),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: EdgeInsets.only(
                      left: 10,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => PickUpFormStep2());
                },
                child: Container(
                  width: w(context),
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(colors: [
                        AppColors.primaryBlue,
                        AppColors.primaryPurple
                      ])),
                  child: txt(
                    'Continue',
                    textAlign: TextAlign.center,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
