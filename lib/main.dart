import 'package:flutter/material.dart';
import 'package:my1/my_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        primarySwatch: Colors.grey,

      ),
      home: const MyHomePage(title: 'Ivanna Karaim'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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

  String _info = "";


  void _information() {
    setState(() {
      if (_info != "") {
        _info = "";
      } else {
        MyClass myClass = MyClass(name: "Ivanna", surname: "Karaim");
        myClass.age = 2003;
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
              '$_info',
              // style: Theme.of(context).textTheme.bodyLarge,
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

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _information,
      //   backgroundColor: Colors.red,
      //
      //   child: const Icon(Icons.account_circle),
      // ), // This trailing comma makes auto-formatting nicer for build methods.

    //   floatingActionButton: Radio(
    //       value: 'value',
    //       groupValue: 'groupValue',
    //       onChanged: (value){
    //         setState(() {
    //           _information();
    //
    //         });
    //
    // }),
    );
  }
}
