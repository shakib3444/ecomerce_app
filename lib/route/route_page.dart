import 'package:ecom/route/route_name.dart';
import 'package:ecom/view/category_screen/category_screen.dart';
import 'package:get/get.dart';

class RoutePage{
  static List<GetPage<dynamic>> routes=[
    GetPage(
        name: AppRoute.category,
        page: ()=> CategoryScreen()
    ),
  ];
}