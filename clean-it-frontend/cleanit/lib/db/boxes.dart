import 'package:cleanit/models/loginInfo.dart';
import 'package:cleanit/models/pickup.dart';
import 'package:cleanit/models/user.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<User> getUserBox() => Hive.box<User>('user');
  static Box<LoginInfo> getLoginInfoBox() => Hive.box<LoginInfo>('loginInfo');
  static Box<PickupList> getPickupListBox() =>
      Hive.box<PickupList>('pickupList');
}

initBoxes() {
  if (!Boxes.getUserBox().containsKey('user')) {
    User user = new User(email: 'na', phone: 'na');
    Boxes.getUserBox().put('user', user);
  }
  if (!Boxes.getLoginInfoBox().containsKey('loginInfo')) {
    LoginInfo loginInfo = new LoginInfo(isLoggedIn: false, email: '');
    Boxes.getLoginInfoBox().put('loginInfo', loginInfo);
  }
  if (!Boxes.getPickupListBox().containsKey('pickupList')) {
    PickupList pickupList = new PickupList(pickups: []);
    Boxes.getPickupListBox().put('pickupList', pickupList);
  }
}
