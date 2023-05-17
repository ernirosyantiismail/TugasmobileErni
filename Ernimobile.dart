import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(206, 12, 124, 64),
              title: Text("WhatsApp"),
              actions: [
                Icon(Icons.camera),
                Icon(Icons.search),
                Icon(Icons.line_weight_rounded)
              ],
              bottom: TabBar(
                  indicatorColor: Color.fromARGB(255, 242, 245, 243),
                  indicatorWeight: 6.0,
                  labelPadding: EdgeInsets.all(10.0),
                  tabs: <Widget>[
                    Icon(Icons.camera_alt),
                    Text('CHAT'),
                    Text('STATUS'),
                    Text('PANGGILAN'),
                  ]),
            ),
            body: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, buider) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text("Erni"),
                    subtitle: Text("Contact"),
                    iconColor: Color.fromARGB(212, 210, 33, 33),
                  );
                }),
          )),
    );
  }
}
