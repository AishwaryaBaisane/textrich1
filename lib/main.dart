import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,


        title: Text('Flutter RichText',style: TextStyle(color :Colors.white,fontSize: 25),),
      ),
      body:Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Text.rich(TextSpan(children:[

          TextSpan(text: 'RichText helps to create\n',style: TextStyle(fontSize: 25,color: Colors.black45,height: -0.010),),
          TextSpan(text: 'Highlighted',style: TextStyle(fontSize: 50,color: Colors.red,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
          TextSpan(text: ',\n',style: TextStyle(fontSize: 25,color: Colors.black45),),
          TextSpan(text: 'Clickable',style: TextStyle(fontSize: 30,color: Colors.blue,decoration: TextDecoration.underline,decorationColor: Colors.blue,height: 1),),
          TextSpan(text: ',',style: TextStyle(fontSize: 25,color: Colors.black45),),
          const TextSpan(
            text: '   ',
          ),
          WidgetSpan(
            child: Container(
              height: 32,
              width: 160,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2.4),
              ),
              child: const Center(
                child: Text(
                  'Outlined Text',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ),

          TextSpan(text: '.',style: TextStyle(fontSize: 25,color: Colors.black45),),
          TextSpan(text: '\n     Say Hi to Rich Text \n',style: TextStyle(fontSize: 25,color: Colors.black45,height: 1),),



        ],),
        ),
      ),
      // / This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
