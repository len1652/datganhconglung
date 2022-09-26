import 'package:flutter/material.dart';
class DestinationPage extends StatelessWidget {
  DestinationPage({Key? key}) : super(key: key);
  String urlImage = "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/%C4%90%E1%BA%A1i_h%E1%BB%8Dc_Khoa_h%E1%BB%8Dc_Hu%E1%BA%BF1.jpg/800px-%C4%90%E1%BA%A1i_h%E1%BB%8Dc_Khoa_h%E1%BB%8Dc_Hu%E1%BA%BF1.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(urlImage),
              Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Dai Hoc Khoa Hoc Hue",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "Day la truong dai hoc khoa hoc cua hue",
                          style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 20
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 50,
                    ),
                    Text(
                      "300",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.red
                      ),
                    )

                  ]
              ),
              Row(
                children: [
                  Icon(
                    Icons.call,
                    size: 200,
                  ),
                  Icon(
                    Icons.send,
                    size: 200,
                  ),
                  Icon(
                    Icons.share,
                    size: 200,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
