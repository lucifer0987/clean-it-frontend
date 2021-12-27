import 'package:cleanit/db/boxes.dart';
import 'package:cleanit/models/pickup.dart';
import 'package:cleanit/pages/myorder/widgets/orderTile.dart';
import 'package:cleanit/utility/appbar.dart';
import 'package:cleanit/utility/data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: cleanItAppBar(
                    headText: 'My Pickup(s)',
                    subHeading: 'Manage your pickups and recent orders'),
              ),
              ValueListenableBuilder(
                  valueListenable: Boxes.getPickupListBox().listenable(),
                  builder: (context, Box box, _) {
                    PickupList pickupList = box.get('pickupList');
                    List<PickUp> pickups = pickupList.pickups;

                    return ListView.builder(
                        itemCount: orders.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => orders[index]);
                    // return OrderTile(
                    //     orderNo: '1431H23',
                    //     date: pickups[index].pickupdate,
                    //     trackNo: "IWB151231",
                    //     qnt: pickups[index].items.length.toString(),
                    //     amt: pickups[index].price,
                    //     status: pickups[index].state.length == 1
                    //         ? "Requested"
                    //         : "Delivered"),
                    // );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
