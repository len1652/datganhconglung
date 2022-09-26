import 'package:flutter/material.dart';
class TinChiBase extends StatelessWidget {        //stl
  TinChiBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          child: Column(
            children: [
              hang1(),
              hang2(),
              hang3()
            ],
          ),
        ),
      ),
    );
  }

  hang1() {
    return Padding(

    );
  }

  hang2() {}

  hang3() {}
}
