import 'package:codelib/a.dart';
import 'package:flutter/material.dart';

import 'Slide_Transition.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'CodeLibrary 1.0'),
        initialRoute: '/main',
        routes: {
          '/main': (context) => MyHomePage(title: 'Welcome To The Code Library!'),
          '/home': (context) => LoggedIn(),
        }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();


  void initState() {
   getData('');
    super.initState();
  }

  Widget LoadingScreen() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Text('CodeLib 1.0',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 50.0),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
          child: Text('',style: TextStyle(color: Colors.black, fontSize: 30.0),),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red, Colors.orangeAccent, Colors.deepOrange, Colors.orangeAccent,Colors.red],
            ),
          ),
          child: Column(
            children: [
              LoadingScreen(),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(60), topLeft: Radius.circular(60)),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(top : 30.0, left: 20.0, right: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                color: Colors.orange[100],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                ),
                                controller: username,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(20.0),
                                  icon: Padding(
                                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                    child: Icon(Icons.person_outline_outlined, color: Colors.orange[900]),
                                  ),
                                  hintText: "Username",
                                  hintStyle: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                color: Colors.orange[100],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextFormField(
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                ),
                                controller: password,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(20.0),
                                  icon: Padding(
                                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                    child: Icon(Icons.lock_outline, color: Colors.orange[900]),
                                  ),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                obscureText: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Builder(
                        builder: (context) => OutlineButton.icon(
                          color: Colors.orange,
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),),
                          onPressed: () {
                            if(username.text == "pramitbhatia25@gmail.com" ||username.text == "1" && password.text == "1" ||password.text == "pramitismekiit")
                            {
                              Navigator.push(
                                  context, Slide(widget: LoggedIn()));
                            }
                            else
                            {
                              Scaffold.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.deepOrange,
                                content: Text('Incorrect Details Entered', style: TextStyle(color: Colors.black, letterSpacing: 1.0, fontSize: 20.0, fontWeight: FontWeight.w800)),
                                duration: Duration(seconds: 3),
                              ),
                              );
                            }
                          },
                          icon: Icon(Icons.login, color: Colors.orange),
                          label: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          borderSide: BorderSide(
                            width: 3.0,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
