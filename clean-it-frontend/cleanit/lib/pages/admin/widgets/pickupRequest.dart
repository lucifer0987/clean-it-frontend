import 'package:cleanit/pages/admin/widgets/orderDetailAdmin.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class PickUpRequests extends StatelessWidget {
  bool showDetailBtn;
  PickUpRequests({Key? key, this.showDetailBtn = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
        padding: EdgeInsets.all(10),
        style: NeumorphicStyle(color: Colors.white),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: txt('Order No. 421123123',
                        size: 12, isBold: true, color: Colors.grey.shade700),
                  ),
                  Container(
                    child: txt('22-12-2021',
                        size: 12, isBold: false, color: Colors.grey.shade400),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: txt('Tracking number: ',
                        size: 12, color: Colors.grey.shade500),
                  ),
                  Container(
                    child: txt('12312AE131 ',
                        size: 12, isBold: true, color: Colors.grey.shade700),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        txt('Qnt: ', color: Colors.grey.shade500, size: 12),
                        txt('4',
                            isBold: true,
                            color: Colors.grey.shade700,
                            size: 12),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        txt('Total Amount ',
                            color: Colors.grey.shade500, size: 12),
                        txt('₹ 30',
                            isBold: true,
                            color: Colors.grey.shade700,
                            size: 12),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (showDetailBtn)
                        GestureDetector(
                          onTap: () {
                            Get.to(() => OrderDetailsAdmin());
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                border:
                                    Border.all(color: Colors.grey.shade300)),
                            child: txt('Details',
                                size: 12,
                                isBold: false,
                                color: Colors.grey.shade600),
                          ),
                        ),
                      if (showDetailBtn)
                        SizedBox(
                          width: 5,
                        ),
                      GestureDetector(
                        onTap: () {
                          // Get.to(() => OrderDetailsAdmin());
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              border: Border.all(color: Colors.grey.shade300)),
                          child: txt('change status',
                              size: 12,
                              isBold: false,
                              color: Colors.grey.shade600),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: txt(
                      'Requested',
                      size: 12,
                      isBold: true,
                      color: Colors.pink.shade200,
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
