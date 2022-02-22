import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // List<String> quotes = [
  //   'After all this time, always',
  //   'The trutn is rarely pure and never simple',
  //   'Be yourself, everyone else is already taken'
  // ];
  List<Quote> quotes =[
    Quote(author: 'Osca wild', text: 'Be yourself, everyone else is already taken'), // here the text is not printing only the author name is printing :(
    Quote(author: 'J K Rowling', text: 'After all this time, always'),
    Quote( text: 'The truth is rarely pure and never simple', author: 'Oscar Wild'),
    // Quote( 'Osca wild',  'Be yourself, everyone else is already taken'),
    // Quote( 'J K Rowling',  'After all this time, always'),
    // Quote( 'Oscar Wild',  'The truth is rarely pure and never simple', ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        //or
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            },
        )).toList(),
      ),
    );
  }
}

