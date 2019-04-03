# LISTVIEW EXAMPLE

The pages folder contains the widgets for each of the tabs

The .dart archives we are going to focus are list-image.dart and list.dart.

Both were made following the following tutorials:

- [Basic List:](https://flutter.dev/docs/cookbook/lists/basic-list)
- [List-view with Builder:](https://medium.com/flutter-community/flutter-building-a-listview-in-flutter-3ea0c56dd496)

list-image.dart contains only a list of widgets whereas the list.dart archive 
goes a little step forward:

Listview has a property called builder. Said property allows us to lazily build widgets on demand.
This means that we could in a sense create an infinite list of elements, which is done in the tutorial.

Each time you scroll and its detected that you reached the end of the list, the list gets added with more suggestions
until you bore yourself out.

I recommend entering in that tutorial for more information.