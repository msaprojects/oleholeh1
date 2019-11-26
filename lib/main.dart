import 'package:flutter/material.dart';
import 'package:oleholeh1/page/akun.dart';
import 'package:oleholeh1/page/bookmark.dart';
import 'package:oleholeh1/page/history.dart';
import 'package:oleholeh1/page/home.dart';
import 'package:oleholeh1/page/pesan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nearby',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Nearby'),
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
  
  int _counter = 0;
  final _layoutPage = [
    Home(),
    Bookmark(),
    History(),
    Pesan(),
    Akun()
  ];

  void _onTabItem(int index){
    setState(() {
     _counter = index;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_counter),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            title: Text('Bookmark')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('History')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            title: Text('Pesan')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Akun')
          )
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _counter,
        onTap: _onTabItem,
      ),
      
    );
  }
}