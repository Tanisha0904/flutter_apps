import 'quote.dart';
import 'package:flutter/material.dart';



class QuoteCard extends StatelessWidget {
  final Quote quote;

  final Function delete;
  QuoteCard({  required this.quote,  required this.delete()});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 6,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8,),
            FlatButton.icon(
              onPressed: delete(),
              label: Text('Delete Quote'),
              icon: Icon(Icons.delete_rounded),
            )
          ],
        ),
      ),
    );
  }
}
