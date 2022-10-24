import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as h;

import '../model/product_model.dart';
class ProductProvider extends ChangeNotifier{
  List<ProductModel> list =[];
  bool showGrid =true;

  void show(bool isGrid){
    showGrid = isGrid;
    notifyListeners();
  }

  void getList() async{
    String aipURL ="https://fakestoreapi.com/products";
    var client  = h.Client();
    var rs = await client.get(Uri.parse(aipURL));     // awai đợi
    var jsonString =rs.body;
    var jsonObject = jsonDecode(jsonString) as List;
    list = jsonObject.map((e){
      return ProductModel.fromJson(e);
    }).toList();
    notifyListeners();                         // sau khi đổ đầy thì phải cảnh báo

  }
}