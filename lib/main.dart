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
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
  
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
