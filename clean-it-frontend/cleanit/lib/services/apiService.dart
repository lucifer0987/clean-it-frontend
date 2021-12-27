import 'dart:convert';
import 'dart:io';

import 'package:cleanit/config/apiConfig.dart';
import 'package:cleanit/models/pickup.dart';
import 'package:cleanit/models/user.dart';
import 'package:cleanit/services/modelHelper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final ModelHelper modelHelper = new ModelHelper();
  final ApiConfig apiConfig = new ApiConfig();

  Future<Map<String, dynamic>> registerUser(User user, String password) async {
    try {
      var body = jsonEncode(
          modelHelper.getRegisterUserBody(user.email, password, user.phone));

      var urlString = apiConfig.baseUrl + apiConfig.signup;

      var url = Uri.parse(urlString);

      final response = await http.post(url,
          headers: {'content-type': 'application/json'}, body: body);
      var resBody = jsonDecode(response.body);

      if (response.statusCode == 200) {
        var api_response = {'success': true, 'message': resBody["message"]};
        return api_response;
      } else {
        var api_response = {'success': false, 'message': resBody["message"]};
        return api_response;
      }
    } on HttpException catch (e) {
      var api_response = {
        'success': false,
        'message': 'oops ! something failed'
      };
      return api_response;
    }
  }

  // login user api
  Future<Map<String, dynamic>> loginUser(String email, String password) async {
    try {
      var body = jsonEncode(modelHelper.getLoginUserBody(email, password));

      var urlString = apiConfig.baseUrl + apiConfig.login;

      var url = Uri.parse(urlString);

      final response = await http.post(url,
          headers: {'content-type': 'application/json'}, body: body);
      var resBody = jsonDecode(response.body);

      if (response.statusCode == 200) {
        var api_response = {
          'success': true,
          'message': resBody["message"],
          'isAdmin': resBody['isAdmin'],
          'phone': resBody['phone'],
          'name': resBody['name']
        };
        return api_response;
      } else {
        var api_response = {'success': false, 'message': resBody["message"]};
        return api_response;
      }
    } on HttpException catch (e) {
      var api_response = {
        'success': false,
        'message': 'oops ! something failed'
      };
      return api_response;
    }
  }
  // schedule pickup api

  Future<Map<String, dynamic>> schedulePickup(PickUp pickUp, User user) async {
    try {
      var body = jsonEncode(modelHelper.getPickupscheduleBody(pickUp, user));

      var urlString = apiConfig.baseUrl + apiConfig.addPickup;

      var url = Uri.parse(urlString);

      final response = await http.post(url,
          headers: {'content-type': 'application/json'}, body: body);
      var resBody = jsonDecode(response.body);

      if (response.statusCode == 200) {
        print(response.body);
        var api_response = {'success': true, 'message': resBody["message"]};
        return api_response;
      } else {
        var api_response = {'success': false, 'message': resBody["message"]};
        return api_response;
      }
    } on HttpException catch (e) {
      var api_response = {
        'success': false,
        'message': 'oops ! something failed'
      };
      return api_response;
    }
  }
}
