import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final title = 'list from flutter documentation';
  


    return Scaffold (
      body: _listbody()
    );
  }

  Widget _listbody() {
    return Container (
      padding: EdgeInsets.all(10),
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