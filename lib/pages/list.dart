import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//stateful widget for the list of random words!
class RandomWords extends StatefulWidget {
  //We create the state for our stateful widget which in thise case will be the listview
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}

//the class randomwordsstate is the one in charge of redrawing the list whenever the user
//interacts with it

class RandomWordsState extends State<RandomWords> {
  
  //suggestions is a final yes, but because this is a stateful widget
  //we can keep adding suggestions everytime the user reaches the end of the suggestions list
  final _suggestions = <WordPair>[];

  //biggerfont is to assign the texstyle for the list tiles
  final _biggerFont = const TextStyle(fontSize: 18);

  //we create the widget in which the list will be located
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      /*appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),*/
      body: _buildSuggestions(),
    );
  }

  //widget for the list
  Widget _buildSuggestions() {
    //builder creates a linear array of widgets created on demand
    //Which means you can pass it an array or make it keep going forever
    //like in this case

    return new ListView.builder(
      padding: const EdgeInsets.all(10.0),
      //itembuilder creates the children instances when called
      //in this case it needs a context along with the index of the list in this case it is i.
      itemBuilder: (context, i) {

        //to divide the items in the list we use a Divider
        //whenever the index is odd it will separate the widgets
        //because the children start at index 0, it means that
        //all the dividers will be at odd numbers 
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        //if we reach the end of the current suggestions
        //We add 10 more wordpairs and add them in the suggestions list
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }

        //the itembuilder returns a row of the following widget
        //we send buildrow the wordpair from the suggestions list
        return _buildRow(_suggestions[index]);
      },
    );
  }

  //Widget for each row of the list
  //build row returns a list tile with the generated wordpairs
  Widget _buildRow(WordPair pair) {
    return new ListTile (
      title: new Text(pair.asPascalCase, style: _biggerFont),
    );
  }
}
