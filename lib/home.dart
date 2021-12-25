import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza_shop/detailpage.dart';
import 'package:pizza_shop/listeler.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: ListView(
          children: [

            Stack(children: [

              Container(
          color: Colors.orange,
                  width: width,
                  padding: EdgeInsets.only(bottom: 90),



                  child: Container(
                    margin: EdgeInsets.only(left:width/5.5,top:20),
                    child: Text("Hotel",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 34,color: Colors.white),),)),

              Container(width: width,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.zero,
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero,
                  ),
                ),
                padding: EdgeInsets.only(bottom: 50),
                margin: EdgeInsets.only(top: 90),
                child: Container(
                  margin: EdgeInsets.only(left: width/2.8,top:20),
                  child: Text("Hizmetlerimiz",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),),),

              ),
            ],),
            SizedBox(
              height: 10.0,
            ),
//making the location and the cart
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [

                      Icon(Icons.location_on),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        "Antakya, Türkiye ",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                  Container(
                    height: 55.0,
                    width: 55.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border:
                            Border.all(color: Colors.grey[300], width: 2.0)),
                    child: Icon(Icons.shopping_basket),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 30.0,
            ),
//
// Container for the info for 10 min delivery
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromRGBO(255, 248, 230, 1),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: width / 20),
                      height: 150.0,
                      width: width / 2.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "10 dakikada \n teslimat",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(215, 153, 79, 1)),
                          ),
                          SizedBox(
                            height: width / 30,
                          ),
                          Text(
                            "Sadece 10 dakikada yemeğinizin tadını çıkarın. Sonsuza Kadar Ücretsiz",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),

                    //here comes the image
                    Container(
                      height: 150.0,
                      width: width / 2.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  NetworkImage("https://cdn.business2community.com/wp-content/uploads/2013/02/hotel_social_media_header-resized-600.png"))),


                    )
                  ],
                ),
              ),
            ),
            //container ends here
            SizedBox(
              height: 10.0,
            ),

            Padding(
              padding: EdgeInsets.all(
                20.0,
              ),
              child: Text("Ürünleri keşfedin",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            //we need the widget here now that is in listview
            Container(
              height: 180.0,
              width: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child:
                        pizzaTabs("İçecekler", "34", "https://www.lavandulahotel.com/media/1386/_dsc9619.jpg?center=0.45721925133689839,0.40747330960854095&mode=crop&width=600&heightratio=1.27&quality=90&slimmage=true&rnd=132182023690000000",0),
                  ),
                  pizzaTabs("Süt Ürünleri", "24", "https://static.wixstatic.com/media/41b5bb_7386703959ad4c8191a4e5cd0089e62a~mv2_d_3203_4804_s_4_2.jpg/v1/fill/w_536,h_804,al_c,q_85,usm_0.66_1.00_0.01/N%C4%B0PPONHOTEL1.webp",1),
                  pizzaTabs("Atıştırmalık", "21", "https://static.wixstatic.com/media/41b5bb_7386703959ad4c8191a4e5cd0089e62a~mv2_d_3203_4804_s_4_2.jpg/v1/fill/w_536,h_804,al_c,q_85,usm_0.66_1.00_0.01/N%C4%B0PPONHOTEL1.webp",2),
                  pizzaTabs("Temizlik", "4", "https://www.rozatemizlik.com/wp-content/uploads/2020/05/logo21-300x300.png",3),
                  pizzaTabs("Yemeklik Malzemeleri", "12", "https://i.pinimg.com/originals/10/e1/83/10e183d90f3dd2ce60eceab3219759e9.jpg",4)
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            //new tab for the reataurant in cities....
            Padding(
              padding: EdgeInsets.all(
                20.0,
              ),
              child: Row(
                children: [
                  Text("Kampanyalarımız: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  Text("Antakya ,Türkiye",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(215, 153, 79, 1)))
                ],
              ),
            ),
            //its container
            Container(
              // color: Colors.red,
              height: 200.0,
              width: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: restaurantsTabs("https://images.yaoota.com/nJiqNWm_yMA5h4PzkOfORcrd15w=/trim/yaootaweb-production-sa/media/crawledproductimages/7a3ed1f42b073ee6cd9eb2b9d2aedc71e1335046.jpg",
                          "Galaxy Çikolata", "Suadi Arabistan", "19,99 TL")),
                  restaurantsTabs(
                      "https://cdn03.ciceksepeti.com/cicek/kc350930-1/L/orjinal-urun-oyuncak-seyyar-super-market-arabasi-aksesuarlari-ile-31-parca-kc350930-1-2.jpg", "Çocuk Tamir Oyun", "Türkiye", "32,99 TL"),
                  restaurantsTabs("https://i2.cnnturk.com/i/cnnturk/75/700x0/5ff43d4d2af10715d4253334", "Kampanya Listesi",
                      "Türkiye", " ")
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget restaurantsTabs(
      String address, String name, String dish, String diatance) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DetailPage())),
          child: Container(
            width: width / 2.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120.0,
                  width: width / 2.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: NetworkImage(address), fit: BoxFit.cover)),
                ),
                //name of the dish
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "\n $diatance ",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget pizzaTabs(String title, String no, String assetimage,int crize) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: ()  {
          var route = new MaterialPageRoute(
            builder: (BuildContext context) =>
            new listeler(crize: crize),
          );
          Navigator.of(context).push(route);
        },
        child: Container(
          height: 170.0,
          width: width / 3.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color.fromRGBO(255, 248, 230, 1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text("$no Ürün Var", style: TextStyle(color: Colors.grey)),
              SizedBox(
                height: 10.0,
              ),
              Image(
                image: NetworkImage(assetimage),
                height: 80.0,
                width: 80.0,
              )
            ],
          ),
        ),
      )
    );
  }
}
