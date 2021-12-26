import 'package:cleanit/pages/home/widgets/sectionTitle.dart';
import 'package:cleanit/utility/appbar.dart';
import 'package:cleanit/utility/data.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:line_icons/line_icons.dart';

import 'orderTile.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildOrderTimeline() {
      return Container(
        margin: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 18,
                  color: Colors.green,
                ),
                txt('  Requested pickup on 22-12-2021',
                    size: 12, color: Colors.grey.shade700)
              ],
            ),
            Container(
              height: 50,
              width: .80,
              margin: EdgeInsets.only(left: 8),
              color: Colors.grey.shade300,
            ),
            Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 18,
                  color: Colors.green,
                ),
                txt('  Pickup request accepted on 22-12-2021',
                    size: 12, color: Colors.grey.shade700)
              ],
            ),
            Container(
              height: 50,
              width: .80,
              margin: EdgeInsets.only(left: 8),
              color: Colors.grey.shade300,
            ),
            Row(
              children: [
                Icon(
                  Icons.circle_outlined,
                  size: 18,
                  color: Colors.grey.shade300,
                ),
                txt('  Processing pickup ',
                    size: 12, color: Colors.grey.shade700)
              ],
            ),
            Container(
              height: 50,
              width: .80,
              margin: EdgeInsets.only(left: 8),
              color: Colors.grey.shade300,
            ),
            Row(
              children: [
                Icon(
                  Icons.circle_outlined,
                  size: 18,
                  color: Colors.grey.shade300,
                ),
                txt('  Order compleated', size: 12, color: Colors.grey.shade700)
              ],
            ),
          ],
        ),
      );
    }

    Widget buildOrderItems() {
      return Neumorphic(
        margin: EdgeInsets.only(left: 20, right: 20),
        style: NeumorphicStyle(color: Colors.white),
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                LineIcons.checkCircle,
                size: 16,
              ),
              title: txt(
                'T-shirt',
                color: Colors.grey.shade800,
                size: 12,
              ),
              subtitle: txt(
                'Normal Wash',
                color: Colors.grey.shade700,
                size: 12,
              ),
              trailing: txt(
                'Qnt: 4',
                color: Colors.grey.shade700,
                size: 12,
              ),
            ),
            ListTile(
              leading: Icon(
                LineIcons.checkCircle,
                size: 16,
              ),
              title: txt(
                'Blanket',
                color: Colors.grey.shade800,
                size: 12,
              ),
              subtitle: txt(
                'Dry Clean',
                color: Colors.grey.shade700,
                size: 12,
              ),
              trailing: txt(
                'Qnt: 2',
                color: Colors.grey.shade700,
                size: 12,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: cleanItAppBar(
                  headText: 'Pickup Summary',
                  subHeading: 'Your pickup summary for order no. #8123TY1231'),
            ),
            OrderTile(
                orderNo: '1931H23',
                date: '22-12-2021',
                qnt: '5',
                showDetailBtn: false,
                amt: '200',
                trackNo: "IWB131231",
                status: 'In Progress'),
            SizedBox(
              height: 20,
            ),
            SectionTitle(title: 'Pickup Items'),
            SizedBox(
              height: 20,
            ),
            buildOrderItems(),
            SizedBox(
              height: 20,
            ),
            SectionTitle(title: 'Order Timeline'),
            SizedBox(
              height: 20,
            ),
            Neumorphic(
                style: NeumorphicStyle(color: Colors.white),
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                padding: EdgeInsets.all(10),
                child: buildOrderTimeline()),
          ],
        ),
      ),
    );
  }
}
