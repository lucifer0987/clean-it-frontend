import 'package:cleanit/pages/auth/widgets/signIn.dart';
import 'package:cleanit/pages/home/home.dart';
import 'package:cleanit/services/localstorage.dart';
import 'package:flutter/material.dart';

Widget checkLoginStatus() {
  LocalStorage localStorage = new LocalStorage();
  if (localStorage.isLoggedIn() == true)
    return Home();
  else
    return SignIn();
}
