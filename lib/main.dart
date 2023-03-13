import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Drawer',
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: const MyDrawerScreen(),
    );
  }
}

class MyDrawerScreen extends StatelessWidget {
  const MyDrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Drawer'),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.indigo
        ),
      ),
      body: const Center(
        child: Text('My Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('Ahad Hashmi'),
              accountEmail: Text('ahadhashmideveloper@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user.JPG'),
              ),
            ),
            ListTile(
              title: Text('My Profile'),
              leading: Icon(CupertinoIcons.person),
            ),
            ListTile(
              title: Text('Themes'),
              leading: Icon(CupertinoIcons.color_filter),
            ),
            ListTile(
              title: Text('Fonts'),
              leading: Icon(Icons.font_download_outlined),
            ),
            ListTile(
              title: Text('Favorites'),
              leading: Icon(CupertinoIcons.heart),
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(CupertinoIcons.settings),
            ),
            ListTile(
              title: Text('Exit'),
              leading: Icon(Icons.exit_to_app),
            )
          ],
        ),
      ),
    );
  }
}



