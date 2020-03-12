import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedback',
      theme: ThemeData.light(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body :
      CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("ABOUT US") ,
          snap: false,
          //flexibleSpace: Image.asset('assets/Kanchenjunga_India.jpg' , fit : BoxFit.fill ,),
          floating: true,
          expandedHeight: 265 ,
          centerTitle: true,
          backgroundColor: Colors.black38,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context) ;
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
    ] ,
    ) ,
   )  ;
  }
}
