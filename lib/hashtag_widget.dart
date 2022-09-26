import 'package:flutter/material.dart';

class HashTagDestination extends StatelessWidget {
  //stl
  HashTagDestination({Key? key}) : super(key: key);
  List<String> hashList = [
    '#Đại nội',
    '#Du lịch',
    '#Ẩm thực',
    '#Kết nối',
    '#Huế',
    '#Sông Hương',
    '#Sông Đà',
    '#Sông Thái Bình',
    '#Sông Dừa',
    '#Sông Hồng',
    '#Sông MÊKONG',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...hashList.map((e) {
              return Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(e, style: TextStyle(color: Colors.white)),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
