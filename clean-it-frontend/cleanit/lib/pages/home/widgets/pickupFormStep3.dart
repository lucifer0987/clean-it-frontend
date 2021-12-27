import 'package:cleanit/pages/home/controllers/pickupController.dart';
import 'package:cleanit/pages/home/widgets/pickupFormSectionHead.dart';
import 'package:cleanit/utility/appbar.dart';
import 'package:cleanit/utility/colorUtil.dart';
import 'package:cleanit/utility/sizeUtil.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pickupScheduled.dart';

class PickUpFormStep3 extends StatelessWidget {
  PickUpFormStep3({Key? key}) : super(key: key);
  PickupController pickupController = Get.find<PickupController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: pickupController.pickupForm3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: cleanItAppBar(
                      context: context,
                      headText: 'Schedule Pickup (Step 3/3)',
                      subHeading:
                          "Provide your laundry details and pick a date and time for pickup of your items by our delivery person. "),
                ),
                PickUpFormSectionHead(head: 'Pickup Date & Time'),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 10),
                  child: TextFormField(
                    onChanged: (val) {
                      pickupController.pickupdate.value = val;
                    },
                    onSaved: (val) {
                      pickupController.pickupdate.value = val.toString();
                    },
                    decoration: InputDecoration(
                      labelText: 'Date of pickup',
                      hintText: 'Eg. 22-DEC-2021',
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
                Obx(() {
                  var title = pickupController.pickuptime.value == ''
                      ? 'Choose a pickup time'
                      : pickupController.pickuptime.value;
                  return GestureDetector(
                    onTap: () {
                      Get.bottomSheet(Container(
                        color: Colors.white,
                        height: h(context) * 0.3,
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {
                                pickupController.pickuptime.value =
                                    '9:00 AM to 2:00 PM';
                                Get.back();
                              },
                              leading: Icon(
                                Icons.local_laundry_service_outlined,
                                size: 20,
                                color: Colors.grey.shade500,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward,
                                size: 20,
                                color: Colors.grey.shade400,
                              ),
                              title: txt('9:00 AM to 2:00 PM',
                                  size: 12, color: Colors.grey.shade500),
                            ),
                            Divider(),
                            ListTile(
                              onTap: () {
                                pickupController.pickuptime.value =
                                    '4:00 PM to 9:00 PM';
                                Get.back();
                              },
                              leading: Icon(
                                Icons.local_laundry_service_outlined,
                                size: 20,
                                color: Colors.grey.shade500,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward,
                                size: 20,
                                color: Colors.grey.shade400,
                              ),
                              title: txt('4:00 PM to 9:00 PM',
                                  size: 12, color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Timing',
                          hintText: title,
                          enabled: false,
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
                  );
                }),
                GestureDetector(
                  onTap: () {
                    pickupController.schedulePickUp();
                  },
                  child: Container(
                    width: w(context),
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        AppColors.primaryBlue,
                        AppColors.primaryPurple
                      ]),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: txt(
                      'Schedule Pickup',
                      textAlign: TextAlign.center,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
