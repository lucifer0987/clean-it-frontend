import 'package:cleanit/db/boxes.dart';
import 'package:cleanit/models/loginInfo.dart';
import 'package:cleanit/models/pickup.dart';
import 'package:cleanit/models/user.dart';

class LocalStorage {
  bool isLoggedIn() {
    var _loginInfoBox = Boxes.getLoginInfoBox();
    if (_loginInfoBox.isNotEmpty) {
      LoginInfo? loginInfo = _loginInfoBox.get('loginInfo');
      if (loginInfo != null) {
        print('box found');
        return loginInfo.isLoggedIn;
      }
    }

    return false;
  }

  void addPickupToLocalStorage(PickUp pickUp) {
    var _pickupBox = Boxes.getPickupListBox();
    PickupList pickupList = _pickupBox.get('pickupList')!;
    pickupList.pickups.add(pickUp);
    _pickupBox.put('pickupList', pickupList);
    print('added to pickup list');
  }

  void addUserToLocalStorage(User user) {
    print('adding user to database');
    var _userBox = Boxes.getUserBox();
    _userBox.put('user', user);
    print('user saved to database');
  }

  User getAppUser() {
    var _userBox = Boxes.getUserBox();
    return _userBox.get('user')!;
  }

  void setUserLoginStatus(bool status, String email) {
    print('setting login status');

    var _loginInfoBox = Boxes.getLoginInfoBox();
    LoginInfo loginInfo = _loginInfoBox.get('loginInfo')!;
    loginInfo.email = email;
    loginInfo.isLoggedIn = true;
    _loginInfoBox.put('loginInfo', loginInfo);
  }
}
