import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My food',
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
        primaryColor: Colors.red,
        accentColor: Colors.red[300],
        textTheme: TextTheme(body1 : TextStyle(color : Colors.purple ,
          fontSize: 16)),
      ),
      home: MyHomePage(title: 'Photos of food'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    Widget foodIcon = Image(image: AssetImage('assets/foodIcon.png'),
      width: 100, height: 100);

    Widget hamburger = Image(image: AssetImage('assets/hamburger.jpg'),
      width: 180, height: 180);

    Widget pancake = Image(image: AssetImage('assets/pancake.jpeg'),
      width: 200, height: 200);

    Widget pizza = Image(image: AssetImage('assets/pizza.jpg'),
      width: 200, height: 200);

    Widget hamburgerText = Text("Hamburger" , textAlign: TextAlign.center);
    Widget pancakeText = Text("Pancake" , textAlign: TextAlign.center);
    Widget pizzaText = Text("Pizza" , textAlign: TextAlign.center);


      Widget _organiseCards(Widget imageSelected , Widget textSelected){
         return Card(
          child: Container(
            padding: EdgeInsets.all(3.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: imageSelected ,
                ),
                Expanded(
                  child: textSelected ,
                ),
              ],
            ),
          ),
        );
      }

    Widget _organiseContainers(Widget imageSelected , Widget textSelected){
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ Colors.red[300] , Colors.white ]
          )
        ),
        padding: const EdgeInsets.all(15.0),
        height: 200 ,
        child: _organiseCards(imageSelected , textSelected) ,
      );
    }

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [ Colors.red[300] , Colors.white ]
              )
            ),
            height: 150 ,
            alignment: Alignment.center,
            child:  foodIcon ,
          ),
          _organiseContainers(hamburger , hamburgerText),
          _organiseContainers(pancake , pancakeText),
          _organiseContainers(pizza , pizzaText),
        ],
      ),
    );
  }
}
