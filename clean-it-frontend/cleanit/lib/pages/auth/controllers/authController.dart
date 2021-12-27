import 'package:cleanit/models/user.dart';
import 'package:cleanit/pages/auth/widgets/signIn.dart';
import 'package:cleanit/pages/home/home.dart';
import 'package:cleanit/services/apiService.dart';
import 'package:cleanit/services/localstorage.dart';
import 'package:cleanit/utility/bottomLoader.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  var phone = ''.obs;
  var email = ''.obs;
  var password = ''.obs;
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  void registerUser() async {
    signupFormKey.currentState!.save();
    closeKeyboard();
    bool isValidRequest = validateRequest();

    if (isValidRequest) {
      // if register request is valid then call api service

      ApiService apiService = new ApiService();
      User user = new User(email: email.value, phone: phone.value);
      bottomLoader();
      var response = await apiService.registerUser(user, password.value);
      Get.back();
      if (response['success'] == true) {
        Get.snackbar('Wohoo! Welcome ', 'You have registed successfully');
        Get.offAll(() => SignIn());
      } else {
        Get.snackbar('Opps! ', response['message']);
      }

      reset();
    }
  }

  void loginUser() async {
    loginFormKey.currentState!.save();
    closeKeyboard();

    bool isValidRequest = validateLoginRequest();
    if (isValidRequest) {
      // if register request is valid then call api service

      ApiService apiService = new ApiService();
      User user = new User(email: email.value, phone: '');
      bottomLoader();
      var response = await apiService.loginUser(email.value, password.value);
      Get.close(1);
      if (response['success'] == true) {
        user.isAdmin = response['isAdmin'];
        user.name = response['name'];
        user.phone = response['phone'];

        Get.snackbar('Wohoo! Welcome ', 'You have logged in successfully');
        LocalStorage localStorage = new LocalStorage();
        localStorage.addUserToLocalStorage(user);
        localStorage.setUserLoginStatus(true, user.email);
        

        Get.offAll(() => Home());
      } else {
        Get.snackbar('Opps! ', response['message']);
      }

      reset();
    }
  }

  bool validateRequest() {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email.value);

    if (phone.value.length != 10) {
      Get.snackbar('Invalid Phone Number', "Please enter a valid phone number");
      return false;
    } else if (email.value.length == 0 || !emailValid) {
      Get.snackbar('Email required !', 'please enter your email id');
      return false;
    } else if (password.value.length == 0) {
      Get.snackbar('Password required !', 'Please enter a password');
      return false;
    } else if (password.value.length < 8) {
      Get.snackbar(
          'Password too short', 'Password should contain atleast 6 char');
      return false;
    }
    return true;
  }

  bool validateLoginRequest() {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email.value);

    if (email.value.length == 0 || !emailValid) {
      Get.snackbar('Email required !', 'please enter your email id');
      return false;
    } else if (password.value.length == 0) {
      Get.snackbar('Password required !', 'Please enter a password');
      return false;
    } else if (password.value.length < 8) {
      Get.snackbar(
          'Password too short', 'Password should contain atleast 6 char');
      return false;
    }
    return true;
  }

  void reset() {
    this.email.value = '';
    this.password.value = '';
    this.password.value = '';
  }
}
