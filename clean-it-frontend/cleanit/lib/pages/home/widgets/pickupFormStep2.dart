import 'package:cleanit/utility/appbar.dart';
import 'package:cleanit/utility/colorUtil.dart';
import 'package:cleanit/utility/sizeUtil.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'pickupFormSectionHead.dart';
import 'pickupFormStep3.dart';

class PickUpFormStep2 extends StatelessWidget {
  const PickUpFormStep2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        height: h(context) * 0.08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  child: txt('Total',
                      size: 15, isBold: true, color: Colors.grey.shade600),
                ),
                Container(
                  child: txt('₹ 300.00', color: Colors.green, isBold: true),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => PickUpFormStep3());
              },
              child: Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.green),
                child: txt(
                  'Checkout',
                  textAlign: TextAlign.center,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
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
                    headText: 'Schedule Pickup (Step 2/3)',
                    subHeading:
                        "Provide your laundry details and pick a date and time for pickup of your items by our delivery person. "),
              ),
              PickUpFormSectionHead(head: 'Laundry Details'),
              Row(
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Item Name',
                          hintText: 'Eg. T-Shirt',
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
                          labelText: 'Quantity',
                          hintText: 'Eg. 5',
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
              GestureDetector(
                onTap: () {
                  Get.bottomSheet(Container(
                    color: Colors.white,
                    height: h(context) * 0.3,
                    child: Column(
                      children: [
                        ListTile(
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
                          title: txt('Normal Wash',
                              size: 12, color: Colors.grey.shade500),
                        ),
                        Divider(),
                        ListTile(
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
                          title: txt('Dry Cleaning',
                              size: 12, color: Colors.grey.shade500),
                        ),
                        Divider(),
                        ListTile(
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
                          title: txt('Woolen Soft Clean',
                              size: 12, color: Colors.grey.shade500),
                        ),
                        Divider(),
                      ],
                    ),
                  ));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Clean Type',
                      hintText: 'Choose Type Of Cleaning',
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
                    gradient: LinearGradient(colors: [
                      AppColors.primaryBlue,
                      AppColors.primaryPurple
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: txt(
                    'Add Item',
                    textAlign: TextAlign.center,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
