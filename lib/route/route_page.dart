import 'package:ecom/data/binding/home_binding.dart';
import 'package:ecom/route/route_name.dart';
import 'package:ecom/view/category_screen/screen/all_product.dart';
import 'package:ecom/view/category_screen/screen/category_screen.dart';
import 'package:ecom/view/category_screen/screen/single_category.dart';
import 'package:get/get.dart';

class RoutePage{
  static List<GetPage<dynamic>> routes=[
    GetPage(
        name: AppRoute.category,
        page: ()=> CategoryScreen(),
      binding: HomeBinding(),
    ),

    GetPage(name: AppRoute.singleCategory, page: ()=>SingleCategory()),
    GetPage(name: AppRoute.allProduct, page: ()=>AllProduct()),
  ];
}