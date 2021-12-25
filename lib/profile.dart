import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:pizza_shop/home.dart';

class profile extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.orange, Colors.red])
    ),
      child: Column(children: [
        Container(

          child: Image.network("https://i.ibb.co/98Z82m4/maps.png"),),
        Container(
          width: width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.orange, Colors.red])
          ),
          child:Center(child: Text("Hotel",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 34,color: Colors.white),),)),
      SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.only(bottom: 20,top: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft:  Radius.circular(10),
              topRight:  Radius.circular(10)

    ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,

                  blurRadius: 20.0, // soften the shadow
                  spreadRadius:1.0,
                  //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    50.0, // Move to bottom 10 Vertically
                  ),
                )
              ]
          ),
          width: width,
          child: Text("Hotel hoş geldiniz\n"
          "İstediğiniz tüm ürünlere sahibiz ve Ramazan ürünlerini indirdik.\n"
          "Tüm ihtiyaçlarınızı karşılamak için bizi ziyaret etmenizi dileriz.\n"
              "Saygılarımızla, Cüm Cüm Market",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19),),),
        Container(height: 5,decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.red, Colors.red])
        ),),
        Container(
          padding: EdgeInsets.only(bottom: 20,top: 10),

          decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
    bottomRight:  Radius.circular(10),
    bottomLeft:  Radius.circular(10)),
            color: Colors.white,
              boxShadow: [
                 BoxShadow(
                  color: Colors.black,

                  blurRadius: 20.0, // soften the shadow
                  spreadRadius: 1.0,
                   //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    25.0, // Move to bottom 10 Vertically
                  ),
                )
              ]
          ),
           child: Column(children: [

          Row(children: [Text("İletişim:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 34,color: Colors.black),),],),
          SizedBox(height: 10,),
          Row(children: [

            Icon(Icons.phone_android_sharp,),
            Text("+90 551 942 30 80",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),

          ],),

          Row(children: [
            Icon(Icons.email),
            Text("cummarket@gmail.com",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),

          ],),
          Row(children: [
            Icon(Icons.add_business_outlined),
            Text("www.CumCumMarket.com",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),

          ],),
          Row(children: [
            Icon(Icons.add_location),
            Text("Antakya, Türkiye",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),

          ],),

        ],),),




      ],),

    );
  }
}