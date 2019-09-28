import 'package:flutter/material.dart';
import 'package:tabs_example/screens/screenOne.dart';
import 'package:tabs_example/screens/screenThree.dart';
import 'package:tabs_example/screens/screenTwo.dart';


class FooterMenu extends StatefulWidget {
  @override
  _FooterMenuState createState() => new _FooterMenuState();
 }
class _FooterMenuState extends State<FooterMenu> {
  @override
  Widget build(BuildContext context) {
   return  DefaultTabController(
     length: 3,
     child:Scaffold(
       appBar: AppBar(
         title: Text("Footer tabbar example"),
       ),
       body: TabBarView(
         children: <Widget>[ScreenOne(),ScreenTwo(),ScreenThree()],
       ),
       bottomNavigationBar: Material(

           color: Colors.grey,
           child: TabBar(
           tabs: <Widget>[
             Tab(icon:Icon(Icons.add_alarm)),
             Tab(icon:Icon(Icons.add_circle)),
             Tab(icon:Icon(Icons.add_alert))
           ],
         ),
       )
       ,
   )
   );
  }
}