import 'package:cleanit/utility/appbar.dart';
import 'package:cleanit/utility/colorUtil.dart';
import 'package:cleanit/utility/textUtil.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cleanItAppBar(context:context)
    );
  }
}
