import 'package:flutter/material.dart';

//In this case the list is a stateless widget
//it wont change or anything
class ImageList extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {

    return Scaffold (
      body: _listbody()
    );
  }
  //listbody is a widget container that has
  //our list of images
  //in this case we need to add each list tile manually
  //also we need to import the images from assets 
  Widget _listbody() {
    return Container (
      padding: EdgeInsets.all(5),
      child: ListView (
      children: <Widget>[
        ListTile(
          title: new Text('WAAAAAAAAAAH'),
          leading: Image(
            image: AssetImage('assets/WAH.png'),
            height: 96.0,
            width: 96.0,
            fit: BoxFit.fitWidth)
        ),
        ListTile(
          title: new Text('I see you'),
          leading: Image(
            image: AssetImage('assets/eyes.jpg'),
            height: 96.0,
            width: 96.0,
            fit: BoxFit.fitWidth)
        )
      ],
      ) 
    );
  }

}