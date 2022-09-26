import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  String urlImage = "https://images.unsplash.com/photo-1527199372136-dff50c10ea34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80";
  @override
  Widget build(BuildContext context) {                // cay -> nhanh -> la -> tieu de
    return Scaffold(                                                    //cay
      appBar: AppBar(                                                   //doi tuong truyen, trong appbar se co logo, tieu de
        title: const Text("Hello app",
        style: TextStyle(color: Colors.pink),),                                       // tieu de nam o giua
        leading: const Icon(
          Icons.menu,
          color: Colors.orange,
          size: 40,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Hello word",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30
                ),
              ),
              Text(
                "welcome",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 50,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 50,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 50,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 50,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 50,
                  ),
                  Text(
                    "50 ratings",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                  )
                ],
              ),
              Image.network(urlImage),
              Image.asset("assets/images/cham.jpg")
            ],
          ),
        ),
      ),

    );
  }
}