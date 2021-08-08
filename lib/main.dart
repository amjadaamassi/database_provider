import 'package:flutter/material.dart';
import 'package:gsg/provider/my_provider.dart';
import 'package:gsg/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) {
      return MyProvider();
    },
    child: MaterialApp(
      home: SplashScreen(),
    ),
  ));
}
