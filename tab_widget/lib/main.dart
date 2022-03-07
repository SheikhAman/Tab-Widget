import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Tabs(),
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.teal)),
      const Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
      const Center(child: Icon(Icons.forum, size: 64.0, color: Colors.blue)),
      const Center(
          child:
              Icon(Icons.account_circle, size: 64.0, color: Colors.tealAccent)),
    ];
    final _kTabs = <Tab>[
      const Tab(
          icon: Icon(
            Icons.cloud,
          ),
          text: 'Tab1'),
      const Tab(icon: Icon(Icons.alarm), text: 'Tab2'),
      const Tab(icon: Icon(Icons.forum), text: 'Tab3'),
      const Tab(icon: Icon(Icons.account_circle), text: 'Tab4'),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Appbar'),
          backgroundColor: Colors.teal,
          bottom: TabBar(
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}
