import 'package:flutter/material.dart';
import 'package:project_g4/hocphan.dart';
class TinChiBase extends StatelessWidget {        //stl
  TinChiBase({Key? key}) : super(key: key);
  List<hocphan> listHocPhan=[
    hocphan("Toán thần cấp", "2021-2022.2.TIN3043.002", "1","assets/images/anhtinchi1.jpg" ),
    hocphan("Toán cao cấp", "2021-2022.2.TIN3043.002", "31","assets/images/anhtinchi2.jpg" ),
    hocphan("Toán siêu cấp", "2021-2022.2.TIN3043.002", "24124","assets/images/anhtinchi3.jpg" ),
    hocphan("Toán tiên cấp", "2021-2022.2.TIN3043.002", "2","assets/images/anhtinchi4.jpg" ),
    hocphan("Toán vương cấp", "2021-2022.2.TIN3043.002", "512521","assets/images/anhtinchi3.jpg" ),
    hocphan("Toán đế cấp", "2021-2022.2.TIN3043.002", "512521","assets/images/anhtinchi5.jpg" ),
    hocphan("Toán học trò cấp", "2021-2022.2.TIN3043.002", "512521","assets/images/anhtinchi2.jpg" ),
    hocphan("Toán thường dân cấp", "2021-2022.2.TIN3043.002", "512521","assets/images/anhtinchi4.jpg" ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children:[
            ...listHocPhan.map((e) {
              return Row(
                children:[
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(10.0),
                    height: 200,
                    width: MediaQuery.of(context).size.width,

                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(e.anh),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        namtren(e.mon,e.ma,e.sohv),
                      ],
                    ),
                  ),
                  // PopupMenuButton(itemBuilder: itemBuilder)
                ]
              );
            }).toList(),

          ]
        ),
      ),
    );
  }

  hang1(String text) {
    return Container(
      // margin: EdgeInsets.only(left: 30),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,

        ),
      ),
    );
  }

  hang2(String text) {
    return Container(
    // margin: EdgeInsets.only(left: 30),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,

        ),
      ),
    );
  }

  hang3(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,

        ),
      ),
    );
  }

  namtren(String text1,String text2,String text3 ) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  hang1(text1),
                  hang2(text2),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 72),
              child: hang3(text3),
            )
          ],
        ),
      )
    );
  }
}
