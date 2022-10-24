import 'package:flutter/material.dart';
import 'package:project_g4/store/provider/product_provider.dart';
import 'package:provider/provider.dart';

import '../../model/product_model.dart';
class ProductListPage extends StatelessWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    if(pp.list.isEmpty){
      pp.getList();
    }
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ...pp.list.map((e){
            return oneElement(e);
          }).toList()
        ],
      ),
    );
  }

  Widget oneElement(ProductModel e) {
    return Container(

      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(e.image??""
            ,width: 70,),
            Text(
              e.title??"",
              style: TextStyle(
                fontSize: 15,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
