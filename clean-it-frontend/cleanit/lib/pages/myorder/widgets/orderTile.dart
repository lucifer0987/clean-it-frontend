import 'package:cleanit/pages/myorder/widgets/orderDetails.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class OrderTile extends StatelessWidget {
  String orderNo;
  String date;
  String qnt;
  String amt;
  String status;
  String trackNo;
  bool showDetailBtn;

  OrderTile(
      {Key? key,
      required this.orderNo,
      required this.date,
      required this.qnt,
      required this.amt,
      required this.trackNo,
      required this.status,
      this.showDetailBtn = true})
      : super(key: key);

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
                    child: txt('Order No. $orderNo',
                        size: 12, isBold: true, color: Colors.grey.shade700),
                  ),
                  Container(
                    child: txt('$date',
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
                    child: txt('$trackNo ',
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
                        txt('$qnt',
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
                        txt('₹ $amt',
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
                  if (showDetailBtn)
                    GestureDetector(
                      onTap: () {
                        Get.to(() => OrderDetails());
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            border: Border.all(color: Colors.grey.shade300)),
                        child: txt('Details',
                            size: 12,
                            isBold: false,
                            color: Colors.grey.shade600),
                      ),
                    ),
                  Container(
                    child: txt(
                      'Delivered',
                      size: 12,
                      isBold: true,
                      color: Colors.green.shade400,
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
