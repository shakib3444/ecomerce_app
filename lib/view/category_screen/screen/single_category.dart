import 'package:ecom/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utility/assets.dart';

class SingleCategory extends StatelessWidget {
  const SingleCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>Get.back(), icon:const Icon(Icons.arrow_back_ios,color: Colors.white,)),
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.transparent,
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.favorite,color: Colors.red,)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart_rounded,color: Colors.orange,)),
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 220,
                child: Image.asset(Assets.nike,height: 200,width: double.infinity,)),
            const SizedBox(height: 10,),
           const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Nike Air",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.amber,),
                    SizedBox(width: 5,),
                    Text("4.5",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.white),)
                  ],),
              ],
            ),
           const Text("\$${2200}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),
            const SizedBox(height: 10,),
            const Text("Nike Sneakers For Men Price | The price range for Nike sneakers for men is diverse."
                " Reflecting the brand’s extensive collection that caters to various styles, preferences, "
                "and performance needs. Nike offers a wide array of sneakers, from classic designs to"
                " cutting-edge models equipped with innovative technologies.",
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),






          ],
        ),
      ),
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(20.0),
        child: AppButton(name: "Add to Cart", onClick: (){}),
      ),
    );
  }
}
