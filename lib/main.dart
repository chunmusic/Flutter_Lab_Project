import 'package:flutter/material.dart';
import 'transaction.dart';
import 'makeListTile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
        id: 't1',
        title: 'Pay for Krapao Kai',
        amount: 200,
        date: DateTime.now(),
        reason: "I'm hungry."),
    Transaction(
        id: 't2',
        title: 'Buy a new notebook',
        amount: 200,
        date: DateTime.now(),
        reason: "The old one was too slow.")
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: transaction.map((tx) {
              // return Card(
              //     child: Column(
              //   mainAxisSize: MainAxisSize.min,
              //   children: <Widget>[
              //     ListTile(
              //       leading: Icon(Icons.album),
              //       title: Text(tx.title + "-" + tx.amount.toString()),
              //       subtitle: Text(tx.reason),

              //     ),
              //     ButtonBar(
              //       children: <Widget>[
              //         FlatButton(
              //           child: const Text('BUY TICKETS'),
              //           onPressed: () {/* ... */},
              //         ),
              //         FlatButton(
              //           child: const Text('LISTEN'),
              //           onPressed: () {/* ... */},
              //         ),
              //       ],
              //     ),
              //   ],
              // ));

              return Card(
                  elevation: 8.0,
                  margin:
                      new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                  child: Container(
                      decoration:
                          BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                      child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.thumb_up, color: Colors.white),
                          ),
                          title: Text(
                            tx.title,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                          subtitle: Row(
                            children: <Widget>[
                              Icon(Icons.linear_scale,
                                  color: Colors.yellowAccent),
                              Text(tx.reason,
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0))));
            }).toList()));
  }
}
