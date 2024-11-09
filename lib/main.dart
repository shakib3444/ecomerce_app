import 'package:ecom/route/route_page.dart';
import 'package:ecom/view/category_screen/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: RoutePage.routes,
      initialRoute:"/",

    );
  }
}
