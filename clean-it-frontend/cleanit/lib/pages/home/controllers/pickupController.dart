import 'package:cleanit/models/pickup.dart';
import 'package:cleanit/models/user.dart';
import 'package:cleanit/pages/home/home.dart';
import 'package:cleanit/pages/home/widgets/pickupFormStep2.dart';
import 'package:cleanit/pages/home/widgets/pickupFormStep3.dart';
import 'package:cleanit/pages/home/widgets/pickupScheduled.dart';
import 'package:cleanit/services/apiService.dart';
import 'package:cleanit/services/localstorage.dart';
import 'package:cleanit/utility/bottomLoader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PickupController extends GetxController {
  var email = ''.obs;
  var name = ''.obs;
  var address1 = ''.obs;
  var phone = ''.obs;
  var pincode = ''.obs;
  var state = ''.obs;
  var city = ''.obs;
  var pickupdate = ''.obs;
  var pickuptime = ''.obs;
  var laundryCount = 1.obs;
  var itemName = ''.obs;
  var qnt = ''.obs;
  var type = ''.obs;
  var price = 0.0.obs;

  List<PickUpItems> item = [];
  PickUpItems oneItem = new PickUpItems(name: 'na', quantity: 'na', type: 'na');
  GlobalKey<FormState> pickupForm1 = GlobalKey<FormState>();
  GlobalKey<FormState> pickupForm2 = GlobalKey<FormState>();
  GlobalKey<FormState> pickupForm3 = GlobalKey<FormState>();

  void savepickUp1() {
    pickupForm1.currentState!.save();
    if (validateRequest1() == true) {
      Get.to(() => PickUpFormStep2());
    }
    closeKeyboard();
  }

  void savepickUp2() {
    pickupForm2.currentState!.save();
    closeKeyboard();
  }

  void savepickUp3() {
    pickupForm3.currentState!.save();
    closeKeyboard();
  }

  void schedulePickUp() async {
    ApiService apiService = new ApiService();
    DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
    DateTime now = DateTime.now();
    dynamic currentTime = DateFormat.jm().format(DateTime.now()).toString();
    String date = DateFormat('kk:mm:ss \n EEE d MMM').format(now);
    PickUp pickUp = new PickUp(
        email: this.email.value,
        name: this.name.value,
        address1: this.address1.value,
        phone: this.phone.value,
        city: this.city.value,
        items: item,
        price: this.price.value.toString(),
        status: [Status(date: date, time: currentTime)],
        pickupdate: this.pickupdate.value,
        pickuptime: this.pickuptime.value,
        pincode: this.pincode.value,
        state: this.state.value);
    LocalStorage localStorage = new LocalStorage();
    User user = localStorage.getAppUser();
    bottomLoader();
    var response = await apiService.schedulePickup(pickUp, user);
    Get.back();

    if (response['success'] == true) {
      Get.snackbar('Saved Successfully !',
          "We have requested a pickup to our service provider ");
      localStorage.addPickupToLocalStorage(pickUp);
      Get.offAll(() => PickupScheduled());
    } else {
      Get.snackbar('Oops !', response['message']);
    }
  }

  void checkOut() {
    pickupForm2.currentState!.save();
    closeKeyboard();
    if (validateItem() == false) return;
    Get.to(() => PickUpFormStep3());
  }

  void addItem() {
    closeKeyboard();
    if (validateItem() == true) {
      oneItem.name = name.value;
      oneItem.quantity = qnt.value;
      oneItem.type = type.value;
      item.add(oneItem);
      itemName.value = '';
      qnt.value = '';
      type.value = '';
      laundryCount.value += 1;
    }
  }

  bool validateItem() {
    if (itemName.value.length == 0) {
      Get.snackbar('Invalid name', "Please enter a valid name");
      return false;
    } else if (qnt.value.length == 0) {
      Get.snackbar('Qnt required !', 'please quantity');
      return false;
    } else if (type.value.length == 0) {
      Get.snackbar('Qnt required !', 'please quantity');
      return false;
    }
    return true;
  }

  bool validateRequest1() {
    if (name.value.length == 0) {
      Get.snackbar('Invalid name', "Please enter a valid name");
      return false;
    } else if (phone.value.length != 10) {
      Get.snackbar('Phone required !', 'please enter your phone no.');
      return false;
    } else if (address1.value.trim().length == 0) {
      Get.snackbar('Address required !', 'Please enter a valid address');
      return false;
    } else if (pincode.value.length == 0) {
      Get.snackbar('Invalid ZipCode', 'Please enter a valid zipcode');
      return false;
    } else if (city.value.length == 0) {
      Get.snackbar('Invalid city', 'Please enter a valid city');
      return false;
    } else if (state.value.length == 0) {
      Get.snackbar('Invalid state', 'Please enter a valid state');
      return false;
    }

    return true;
  }

  bool validateRequest2() {
    if (name.value.length != 10) {
      Get.snackbar('Invalid name', "Please enter a valid name");
      return false;
    } else if (phone.value.length != 10) {
      Get.snackbar('Phone required !', 'please enter your phone no.');
      return false;
    } else if (address1.value.length == 0) {
      Get.snackbar('Address required !', 'Please enter a valid address');
      return false;
    } else if (pincode.value.length == 0) {
      Get.snackbar('Invalid ZipCode', 'Please enter a valid zipcode');
      return false;
    } else if (state.value.length == 0) {
      Get.snackbar('Invalid state', 'Please enter a valid state');
      return false;
    }
    return true;
  }
}
