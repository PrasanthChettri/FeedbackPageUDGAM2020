import 'package:flutter/material.dart';
import 'moodlist.dart' ;
import 'feedbackstatement.dart' ;

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

class _MyHomePageState extends State<MyHomePage>{
  //ASSESTS --
  var rowi =  new row_b() ;
  var feedi = new FeedbackField() ;
  bool  anonymous  = false  ;
  String feedback = "" ;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       backgroundColor: Colors.white ,
       body :
        CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 69,
            ),
          ) ,
          SliverToBoxAdapter(
              child :  rowi.get_widget()  ,
          ) ,
          SliverToBoxAdapter(
              child: feedi.get_field(),
          )
        ] ,
      ) ,
   ) ;
  }
}
