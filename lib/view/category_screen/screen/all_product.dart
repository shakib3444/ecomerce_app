import 'package:ecom/widget/app_input.dart';
import 'package:flutter/material.dart';

class AllProduct extends StatelessWidget {
   AllProduct({super.key});

  final _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("All Product",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),
        bottom: PreferredSize(
          preferredSize: Size.square(50),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: AppInput(hint: "search", controller: _search),
          ),


        ),
      ),
    );
  }
}
