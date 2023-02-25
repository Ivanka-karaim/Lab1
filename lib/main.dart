import 'package:flutter/material.dart';
import 'package:my1/my_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Start',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Ivanna Karaim'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _info = "";
  void _information() {
    setState(() {
      if (_info != "") {
        _info = "";
      } else {
        MyClass myClass = MyClass(name: "Ivanna", surname: "Karaim");
        myClass.age = 19;
        myClass.email = "karaimivanna@gmail.com";
        _info = myClass.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _info,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.normal ),
              textAlign: TextAlign.center,
            ),

            ElevatedButton.icon(
                onPressed: _information,
                label: const Text('Click'),
                icon: const Icon(Icons.account_circle),

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.white)),

            ),
          ],
        ),
      ),


    );
  }
}
