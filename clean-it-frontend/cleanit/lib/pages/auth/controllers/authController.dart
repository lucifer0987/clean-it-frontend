import 'package:cleanit/services/apiService.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var phone = ''.obs;
  var email = ''.obs;
  var password = ''.obs;

  void registerUser() {
    bool isValidRequest = validateRequest();
    if (isValidRequest) {
      // if register request is valid then call api service
      ApiService apiService = new ApiService();
      apiService.registerUser();
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
    } else if (password.value.length < 6) {
      Get.snackbar(
          'Password too short', 'Password should contain atleast 6 char');
      return false;
    }
    return true;
  }
}
