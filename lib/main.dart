import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Fortinity',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.1),
          ),
          backgroundColor: const Color(0xFFFEE715),
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xFF101820),
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                  decoration: BoxDecoration(color: Color(0xFFFEE715)),
                  child: Center(
                    child: Text(
                      'Fortinity',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.1,
                          fontSize: 28),
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.wb_sunny, size: 24.0, color: Colors.white),
                title: Text(
                  'About  Fortinity',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              ListTile(
                leading:
                    Icon(Icons.accessibility, size: 24.0, color: Colors.white),
                title: Text(
                  'About Us',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const Center(
          child: MyCard(),
        ),
        backgroundColor: const Color(0xFF101820),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFFFEE715),
          child: const Icon(
            Icons.refresh_outlined,
            color: Colors.black,
          ),
        ));
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.all(16.0),
        children: const <Widget>[
          Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            ListTile(
              leading:
                  Icon(Icons.thermostat, size: 24.0, color: Color(0xFF101820)),
              title: Text(
                'Temperature',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),
              subtitle: Text(
                '20°C',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  letterSpacing: 1.2,
                  fontSize: 18,
                ),
              ),
            )
          ])),
          Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            ListTile(
              leading: Icon(Icons.accessibility,
                  size: 24.0, color: Color(0xFF101820)),
              title: Text(
                'Motion',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),
              subtitle: Text(
                'Detected',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  letterSpacing: 1.2,
                  fontSize: 18,
                ),
              ),
            )
          ])),
          Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            ListTile(
              leading:
                  Icon(Icons.lightbulb, size: 24.0, color: Color(0xFF101820)),
              title: Text(
                'Light',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),
              subtitle: Text(
                'Light/Dark',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  letterSpacing: 1.2,
                  fontSize: 18,
                ),
              ),
            )
          ]))
        ]);
  }
}
