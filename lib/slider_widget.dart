import 'package:flutter/material.dart';
class SliderDestination extends StatelessWidget {
  SliderDestination({Key? key}) : super(key: key);
  List<String> listImage=[
    'assets/images/anhnenweb.png',
    'assets/images/p2.jpg',
    'assets/images/p3.jpg',
    'assets/images/p4.jpg',
    'assets/images/cham.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(                         // hộp chứa vật thể bên trong, khi chúng ta
                                                // đưa vật thể vào hộp đó chúng ta có thể trang trí cho nó
        height: 300,
        child:  Row(
          children: [
            ...listImage.map((e) {              // ... là phân rã thành dấu ,
              // return Image.asset(e);
              return Container(
                margin: EdgeInsets.only(right: 10),
                width: MediaQuery.of(context).size.width,         // độ rộng của màn hình
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(e),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(30)         // bo góc
                ),
              );
            }).toList(),                                          //giong for its trong do e là 1 phan tu
            // for(int i = 0; i<listImage.length;i++)
            //   Image.asset(listImage[i]),
          ],
        ),
      ),
    );
  }
}

