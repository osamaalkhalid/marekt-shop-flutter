import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:pizza_shop/home.dart';
import 'package:pizza_shop/profile.dart';
import 'package:pizza_shop/contact.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motion Tab Bar Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Motion Tab Bar Sample'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  MotionTabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = MotionTabController(initialIndex: 1, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: MotionTabBar(
          labels: [
            "Hakkimizda","Ana Sayfa","Messaj"
          ],
          initialSelectedTab: "Ana Sayfa",
          tabIconColor: Colors.grey,

          tabSelectedColor: Colors.orange,
          onTabItemSelected: (int value){
            print(value);
            setState(() {
              _tabController.index = value;
            });
          },
          icons: [
            Icons.account_box,Icons.home,Icons.message

          ],
          textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),

        ),
        body: MotionTabBarView(
          controller: _tabController,
          children: <Widget>[
           profile(),
            Home(),

            Register(),
          ],
        ));
  }

}
