import 'package:flutter/material.dart';

class ModelHelper {
  Map<String, dynamic> getRegisterUserBody(
      String email, String password, String phone) {
    return {'email': email, 'password': password, 'phone': phone};
  }
}
