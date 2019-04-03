import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:first_flutter_app/pages/contact.dart';
import 'package:first_flutter_app/pages/home.dart';
import 'package:first_flutter_app/pages/video.dart';
import 'package:first_flutter_app/pages/list.dart';
import 'package:first_flutter_app/pages/list-image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter list',
      home: new Scaffold(
        appBar: new AppBar(
          title: Text("Tabs are back"),
          backgroundColor: Color(0000),
        ),
        body: MyTabs(),
      ),
    );
  }
}


class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() =>  _MyTabsState();
 }


class _MyTabsState extends State<MyTabs>  with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
      // TODO: implement initState
      super.initState();
      controller =  TabController(length: 5, vsync: this);
    }
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar:  AppBar(
       title:  Text("completely necessary appbar"),
       backgroundColor: Colors.redAccent,
       bottom:  TabBar(
         tabs: <Widget>[
            Tab(
             icon:  Icon(Icons.home),
           ),
           Tab(
             icon:  Icon(Icons.ondemand_video),
           ),
           Tab(
             icon:  Icon(Icons.contacts),
           ),
           Tab(
             icon: Icon(Icons.layers)
           ),
           Tab(
             icon: Icon(Icons.lens)
           )
         ],
         controller: controller,
       ),
     ),
    body:  TabBarView(
      children: <Widget>[
          Home(),  Video(),  Contact(), RandomWords(), ImageList()
      ],
      controller: controller
    )
   );
  }
}


