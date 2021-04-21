import 'package:flutter/material.dart';
import 'package:gojek_clone/pages/account.dart';
import 'package:gojek_clone/pages/chat.dart';
import 'package:gojek_clone/pages/home.dart';
import 'package:gojek_clone/pages/inbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Gojek'),
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
  int _selectedIndex = 0;
  final _layoutPage = [
    Home(),
    Chat(),
    Inbox(),
    Account(),
  ];
  
  void _onTabItem(int index) {
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/logo.png',scale: 13,),
        actions: [
          Image.asset('images/diskon.png',scale: 3,)
        ],
        // centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            _onTabItem(index);
          },
        items: [
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/home.png', scale: 2.5),
            ),
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/home-non.png', scale: 2.5),
            ),
            label: ('Home')
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/chat.png', scale: 2.5),
            ),
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/chat-non.png', scale: 2.5),
            ),
            label: ('Chat')
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/inbox.png', scale: 2.5),
            ),
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/inbox-non.png', scale: 2.5),
            ),
            label: ('Inbox')
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/account.png', scale: 2.5),
            ),
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/account-non.png', scale: 2.5),
            ),
            label: ('Profile')
          )
        ],
      ),
    );
  }
}
