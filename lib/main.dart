import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
    
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Platform'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
                 onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
              },
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/IMG_2090.jpg'),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Moaz Abotalb',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Flutter & Fullstack Devolper',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () => launch('tel:+201011021029'),
              child: Text('0101-102-1029', style: TextStyle(fontSize: 20.0)),
            ),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () =>
                  launch('mailto:moaz_m96581@cic-cairo.com?subject=Good%20Night'),
              child: Text('mezodotcom@gmail.com',
                  style: TextStyle(fontSize: 20.0)),
            ),
          ],
        ),
      ),
    );
  }
}


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
             backgroundImage: AssetImage('assets/images/IMG_2090.jpg'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Moaz',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Devolper',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
