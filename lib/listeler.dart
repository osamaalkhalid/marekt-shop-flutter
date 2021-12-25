import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:pizza_shop/home.dart';

class listeler extends StatefulWidget {
  final int crize;
  listeler({Key key, this.crize}) : super(key: key);
  @override
  _listelerState createState() => _listelerState();

}

class _listelerState extends State<listeler> {

  @override
  Widget build(BuildContext context) {
    var rekam = "${widget.crize}";
    print(rekam);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SlidingUpPanel(
          maxHeight: height,
          minHeight: height / 1.6,
          body: Container(
            height: height / 2,
            width: width,
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                if(rekam =="0") ...[  Image(
                  image: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/91XRtI%2B6WOL.png"),
                  fit: BoxFit.cover,
                  height: height / 2,
                  width: width,
                ),],
                //case 2
                if(rekam =="1") ...[  Image(
                  image: NetworkImage("https://toppng.com/uploads/preview/milk-png-11554019731zzc03ngzzv.png"),
                  fit: BoxFit.cover,
                  height: height / 2,
                  width: width,
                ),],
                //case3
                if(rekam =="2") ...[  Image(
                  image: NetworkImage("https://media-cdn.t24.com.tr/media/stories/2012/02/raw_dunya-devi-cips-markasi-27-milyar-dolara-satildi_894496692.jpg"),
                  fit: BoxFit.cover,
                  height: height / 2,
                  width: width,
                ),],
                //case 4
                if(rekam =="3") ...[  Image(
                  image: NetworkImage("https://www.dogutemizlik.com/File_Uploadx/Sayfa/buyuk/temizlik-malzemeleri-temizlik-esyalari-252339.PNG"),
                  fit: BoxFit.cover,
                  height: height / 2,
                  width: width,
                ),],
                //case 5
                if(rekam =="4") ...[  Image(
                  image: NetworkImage("https://www.trendekonomi.com/cdn/images/01102020103803_7474177_10_38.jpg"),
                  fit: BoxFit.cover,
                  height: height / 2,
                  width: width,
                ),],

                Positioned(
                    top: 40.0,
                    left: 15.0,
                    child: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.white,
                          size: 35.0,
                        ),
                        onPressed: () => Navigator.of(context).pop(true)))
              ],
            ),
          ),
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.grey[100],
          panel: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                  child: Column(
                    children: [
                      if(rekam =="0") ...[ menuItemtab("https://reimg-carrefour.mncdn.com/mnresize/600/600/productimage/30096964/30096964_0_MC/8796979527730_1600421576233.jpg",
                          "Pepsi", "Türkiye", "5,99 TL"),
                        menuItemtab(
                            "https://www.britishcornershop.co.uk/img/subcat/1914.jpg", "İçecekler Gurubu", "Türkiye", "32,99 TL"),

                        menuItemtab(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG6yHU1kR9rU50ZNqMPlPRAJ5IPgnf2c2COQ&usqp=CAU", "StarBox", "ABD", "12,99 TL"),
                      ],

                      //2case
                      if(rekam =="1") ...[ menuItemtab("https://www.hanifpehlivanoglu.com.tr/files/assets/images/product/165372.jpg",
                          "1 litre Süt", "Suadi Arabistan", "3,99 TL"),
                        menuItemtab(
                            "https://www.besasekmek.com.tr/upload/urunler/urunler1_r8fd19iqte.jpg", "peynir", "Türkiye", "18,99 TL"),

                        menuItemtab("https://i.sozcu.com.tr/wp-content/uploads/2020/07/25/yumurta-alirken-buna-dikkat-10.jpg", "Yumurta",
                            "Türkiye", "6,95 TL"),
                      ],
                      //3 cips
                      if(rekam =="2") ...[ menuItemtab("https://www.elmamarket.com.tr/wp-content/uploads/2020/09/14-5.jpg",
                          "lays cips", "Türkiye", "3,99 TL"),
                        menuItemtab(
                            "https://www.mismarsanalmarket.com/UserFiles/Fotograflar/org/5785-chips-master-kabuklu-klasik-cips-110-gr-kabuklu-jpg-kabuklu.jpg", "Cips Master", "Türkiye", "2,99 TL"),
                        menuItemtab("https://www.marketinburada.com/wp-content/uploads/2019/11/PATOS-ROLLS-ACILI-C%C4%B0PS-K%C3%9C%C3%87%C3%9CK-BOY-600x600.jpg", "Patos ",
                            "Türkiye", "1,95 TL"),
                        menuItemtab("https://cdn.dsmcdn.com/mnresize/415/622/ty14/product/media/images/20200930/11/12590139/89485563/1/1_org_zoom.jpg", "Doritos ",
                            "Türkiye", "4,95 TL"),
                        menuItemtab("https://i.ytimg.com/vi/rIB7YL5Stc8/maxresdefault.jpg", "Cips Gurubu ",
                            "Türkiye", "9,95 TL"),

                      ],
                      //4 temizlilik
                      if(rekam =="3") ...[ menuItemtab("https://www.sarfmarket.com.tr/unilever-hijyen-temizlik-paketi-fiyati-temizlik-seti-domestos-33053-15-B.jpg",
                          "Gurub Ürünler", "Suadi Arabistan", "40,99 TL"),
                        menuItemtab(
                            "https://cdn.rossmann.com.tr/mnresize/300/300/media/catalog/product/0/4/04305615204154_RS_5ff86b668500a.jpg", "Dombol", "Türkiye", "22,99 TL"),
                        menuItemtab("https://www.ozdengroup.com/asimo/uploads/urun/2520978-ahsap-beyazsabun.png", "Ahşap ",
                            "Türkiye", "7,95 TL"),],
                      //5 baharat
                      if(rekam =="4") ...[ menuItemtab("https://productimages.hepsiburada.net/s/35/375/10495507169330.jpg",
                          "Baharat Gurubu", "Suadi Arabistan", "79,99 TL"),
                        menuItemtab(
                            "https://www.arifoglu.com/arifoglu-sarimsakli-tuzlu-baharat-80g-degirmen-degirmenli-cam-sise-baharat-763463-15-B.jpg", "Sarımsak", "Türkiye", "12,99 TL"),
                        menuItemtab("https://i0.wp.com/karadagbaharat.com/wp/wp-content/uploads/2019/12/nane-eko-paket-karadag-baharat-1.jpg?fit=450%2C450", "Karadağ Baharat ",
                            "Türkiye", "5,95 TL"),],





                      SizedBox(height: 10,),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                          boxShadow: [
                            BoxShadow(color: Colors.green, spreadRadius: 3),
                          ],
                        ),
                        child: TextButton(  child:Text("SATIN AL",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),)),
                      )
                    ],
                  )
              )
            ],
          )),
    );
  }

  Widget menuItemtab(
      String pizzaImage, String pizza, String ingredients, String price) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Container(
        height: 100.0,
        width: width - 40.0,
        child: Stack(
          children: [
            //let have the clok for the pizza items....
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Container(
                padding: EdgeInsets.only(left: 70.0, right: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
                height: 100.0,
                width: width - 90.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pizza,
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          ingredients,
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Text("\$$price",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 15.0))
                  ],
                ),
              ),
            ),
            Positioned(
                left: 0.0,
                child: Image(
                  image: NetworkImage(pizzaImage),
                  height: 100.0,
                  width: 100.0,
                ))
          ],
        ),
      ),
    );
  }

  Widget menu(Color colore, String menu, String menuImage, Color menuColor) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Container(
        alignment: Alignment.center,
        height: 40.0,
        width: 100.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: colore),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(menuImage),
              height: 20.0,
              width: 20.0,
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(menu,
                style: TextStyle(
                  color: menuColor,
                ))
          ],
        ),
      ),
    );
  }
}
