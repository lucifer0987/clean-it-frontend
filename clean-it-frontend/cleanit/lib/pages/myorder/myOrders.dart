import 'package:cleanit/utility/appbar.dart';
import 'package:cleanit/utility/data.dart';
import 'package:flutter/material.dart';

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
              ListView.builder(
                  itemCount: orders.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => orders[index])
            ],
          ),
        ),
      ),
    );
  }
}
