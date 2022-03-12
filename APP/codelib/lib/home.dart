import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'a.dart';
import 'book.dart';

class LoggedIn extends StatefulWidget {

  const LoggedIn({Key? key}) : super(key: key);

  @override
  _LoggedInState createState() => _LoggedInState();
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toUpperCase()}";
  }
}

var books = <String>[];

Widget listViewWidget(dynamic x) {

  for(int i = 0; i < x.length; i++)
    {
      books.add(x[i]);
    }
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: x.length,
          padding: const EdgeInsets.all(15.0),
          itemBuilder: (context, position) {
            return Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.orange[100],
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        x[position].toUpperCase(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          height: 2,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    ),
  );
}

class _LoggedInState extends State<LoggedIn> {

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        foregroundColor: Colors.black,
        backgroundColor: Colors.orange[200],
      ),
      drawer: Drawer(

      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.red,
                  Colors.orangeAccent,
                  Colors.deepOrange,
                  Colors.orangeAccent,
                  Colors.red
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                          ),
                          controller: searchController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(20.0),
                            icon: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  20.0, 0.0, 0.0, 0.0),
                              child:
                                  Icon(Icons.search, color: Colors.orange[900]),
                            ),
                            hintText: '''Enter book title, author or content''',
                            hintStyle: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FutureBuilder(
                    future: getData(''),
                    builder: (context, snapshot) {
                      return snapshot.data != null
                          ? listViewWidget(snapshot.data)
                          : Center(child: CircularProgressIndicator());
                    }),
                RaisedButton(onPressed: (){

                  for(int i = 0; i < books.length; i++)
                    {
                    }
                      print(books);
                }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
