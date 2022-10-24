import 'package:flutter/material.dart';
import 'package:project_g4/store/provider/product_provider.dart';
import 'package:project_g4/store/provider/homeitem/productlist_page.dart';
import 'package:project_g4/store/provider/view.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ProductProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      )
    )
  );
}




