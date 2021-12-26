import 'package:cleanit/pages/home/widgets/plans.dart';
import 'package:cleanit/pages/myorder/widgets/orderTile.dart';

List<Plans> plans = [
  Plans(
      imagefile: 'f4.png',
      title: 'Soft Clean',
      subtitle: "Clothes are cleansed Softly with light detergent powered"),
  Plans(
      imagefile: 'f3.png',
      title: 'Dry Cleaning',
      subtitle: "Clothes are cleansed without using water at all."),
  Plans(
      imagefile: 'f1.png',
      title: 'Extra Dry',
      subtitle: "Cloths are dried with extra temperature for visible crease"),
  Plans(
      imagefile: 'f2.png',
      title: 'Soft Clean',
      subtitle: "Cloths are dried with extra temperature for visible crease"),
];

List<OrderTile> orders = [
  OrderTile(
      orderNo: '1931H23',
      date: '22-12-2021',
      qnt: '5',
      amt: '200',
      trackNo: "IWB131231",
      status: 'In Progress'),
  OrderTile(
      orderNo: '1431H23',
      date: '20-12-2021',
      trackNo: "IWB151231",
      qnt: '2',
      amt: '100',
      status: 'Delivered'),
];
