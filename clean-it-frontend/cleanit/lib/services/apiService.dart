import 'dart:convert';

import 'package:cleanit/models/user.dart';
import 'package:cleanit/services/modelHelper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final ModelHelper modelHelper = new ModelHelper();
  Future<Map<String, dynamic>> registerUser(User user, String password) {
    // try {
    //   var body = jsonEncode(
    //       modelHelper.getRegisterUserBody(user.email,password,user.phone);
    //   var urlString = apiConfig.baseUrl + apiConfig.addPasswordUrl;
    //   var url = Uri.parse(urlString);
    //   final response = await http.post(url,
    //       headers: apiConfig.getHeaders(appUser: appUser), body: body);

    //   // print(response.body);

    //     var apiResponse = {"password": savedPassword, "error": null};
    //     return apiResponse;
    //   } else {

    //   }
    // } on HttpException catch (e) {

    // }
  }
}
