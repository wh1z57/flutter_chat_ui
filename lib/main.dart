import 'package:chat_ui/widgets/category_selector.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat UI',
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.yellow[50],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading:
            IconButton(icon: Icon(Icons.menu), iconSize: 30.0, onPressed: null),
        title: Text(
          'Chats',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), iconSize: 30.0, onPressed: null)
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )),
          ))
        ],
      ),
    );
  }
}
