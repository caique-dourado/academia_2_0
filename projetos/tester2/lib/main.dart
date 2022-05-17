import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<NavigatorState> _navigator = GlobalKey<NavigatorState>();

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: WillPopScope(
          child: Navigator(
            key: _navigator,
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case '/':
                  return CupertinoPageRoute(
                      builder: (context) => const HomePageTest());
                case '/step1':
                  return CupertinoPageRoute(
                      builder: (context) => const FormStep1());
                case '/step2':
                  return CupertinoPageRoute(
                      builder: (context) => const FormStep2());
              }
              return null;
            },
          ),
          onWillPop: () async => !await _navigator.currentState!.maybePop()),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class HomePageTest extends StatelessWidget {
  const HomePageTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        Text('Home Page'),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/step1'),
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

class FormStep1 extends StatelessWidget {
  const FormStep1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: const [
          Text('Step 1'),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/step2'),
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

class FormStep2 extends StatelessWidget {
  const FormStep2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [Text('Step 2'), TextFormField()]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/'),
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
