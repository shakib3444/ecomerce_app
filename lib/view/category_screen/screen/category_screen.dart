import 'package:ecom/route/route_name.dart';
import 'package:ecom/utility/assets.dart';
import 'package:ecom/view/category_screen/widget/category_card.dart';
import 'package:ecom/widget/app_button.dart';
import 'package:ecom/widget/app_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
   CategoryScreen({super.key});
  final _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:const Text("Category Screen ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.brown),),
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.transparent,
        bottom:PreferredSize(
            preferredSize:const Size.square(60),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: AppInput(prefixIcon:const Icon(Icons.search),hint: "search", controller: _search),
            )) ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //banner
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("NEW ARRIVALS",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                AppButton(name: "View All", onClick: (){},height: 30,width: 100,bgColor: Colors.grey,),
              ],
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                  itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CategoryCard(
                        name: "Nike",
                        rating: 4.5,
                        price: "2100",
                        onClick: ()=>Get.toNamed(AppRoute.singleCategory),
                        image: Assets.nike),
                  );

              }),

            ),
           const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("NEW ARRIVALS",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                AppButton(name: "View All", onClick: (){},height: 30,width: 100,bgColor: Colors.grey,),
              ],
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CategoryCard(
                          name: "Nike",
                          rating: 4.5,
                          price: "2100",
                          onClick: ()=>Get.toNamed(AppRoute.singleCategory),
                          image: Assets.nike),
                    );

                  }),

            ),
            const SizedBox(height: 15,),
            Expanded(

              child: GridView.builder(
                itemCount: 10,
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: .90,
                    mainAxisExtent: 180
                  ),
                  itemBuilder: (context,index){
                    return CategoryCard(
                      image:Assets.nike,
                      name: "Nike",
                      price: "1500",
                      onClick: ()=>Get.toNamed(AppRoute.singleCategory),
                    );

              }),
            ),
          ],
        ),
      ),
    );
  }
}


