import 'package:get/get_connect/http/src/request/request.dart';
import 'package:hive/hive.dart';

part 'pickup.g.dart';

@HiveType(typeId: 5)
class PickupList extends HiveObject {
  @HiveField(0)
  List<PickUp> pickups;
  PickupList({required this.pickups});
}

@HiveType(typeId: 3)
class PickUp extends HiveObject {
  @HiveField(0)
  String email;
  @HiveField(1)
  String name;
  @HiveField(2)
  String address1;
  @HiveField(3)
  String pincode;
  @HiveField(4)
  String state;
  @HiveField(5)
  String city;
  @HiveField(6)
  String pickupdate;
  @HiveField(7)
  String pickuptime;
  @HiveField(8)
  List<PickUpItems> items;
  @HiveField(9)
  String price;
  @HiveField(10)
  List<Status> status;
  @HiveField(11)
  String phone;

  PickUp(
      {required this.email,
      required this.name,
      required this.address1,
      required this.city,
      required this.phone,
      required this.items,
      required this.pickupdate,
      required this.pickuptime,
      required this.pincode,
      required this.price,
      required this.state,
      required this.status});
}

@HiveType(typeId: 4)
class PickUpItems extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String quantity;
  @HiveField(2)
  String type;

  PickUpItems({required this.name, required this.quantity, required this.type});
}

@HiveType(typeId: 6)
class Status extends HiveObject {
  @HiveField(0)
  String date;
  @HiveField(1)
  String time;

  Status({required this.date, required this.time});
}
