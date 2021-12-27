import 'dart:convert';

import 'package:cleanit/models/pickup.dart';
import 'package:cleanit/models/user.dart';
import 'package:flutter/material.dart';

class ModelHelper {
  Map<String, dynamic> getRegisterUserBody(
      String email, String password, String phone) {
    return {
      'email': email,
      'password': password,
      'phone': phone,
      'name': 'user',
      'isAdmin': false
    };
  }

  Map<String, dynamic> getLoginUserBody(String email, String password) {
    return {
      'email': email,
      'password': password,
    };
  }

  getPickupscheduleBody(PickUp pickUp, User user) {
    var items = [];

    pickUp.items.forEach((element) {
      var oneitem = jsonEncode({
        'name': element.name,
        'quantity': element.quantity.toString(),
        'type': element.type
      });
      items.add(oneitem);
    });

    var status = [
      {'date': pickUp.status[0].date, 'time': pickUp.status[0].time}
    ];
    return {
      "email": user.email,
      "name": pickUp.name,
      "address1": pickUp.address1,
      "pincode": pickUp.pincode,
      "state": pickUp.state,
      "phone": pickUp.phone,
      "city": pickUp.city,
      "pickupdate": pickUp.pickupdate,
      "pickuptime": pickUp.pickuptime,
      "items": items,
      "price": pickUp.price,
      "status": status
    };
  }
}
