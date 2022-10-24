import 'package:flutter/material.dart';

import 'home_header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader()
          ],
        ),
      )
    );
  }
}
