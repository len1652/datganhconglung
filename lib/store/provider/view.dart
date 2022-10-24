import 'package:flutter/material.dart';
import 'package:project_g4/store/styles/size_config.dart';
import 'homeitem/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Home(),
    );
  }
}
