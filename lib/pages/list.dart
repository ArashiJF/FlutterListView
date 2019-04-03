import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//stateful widget for the list of random words!
class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];

  final _biggerFont = const TextStyle(fontSize: 18);

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
    return new ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        //if we reach the end of the current suggestions
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  //Widget for each row of the list
  Widget _buildRow(WordPair pair) {
    return new ListTile (
      title: new Text(pair.asPascalCase, style: _biggerFont),
    );
  }
}
