import 'package:flutter/material.dart';
import 'moodlist.dart' ;
import 'feedbackstatement.dart' ;
import 'validator.dart' ;
import 'radio.dart' ;


/**
 * import 'package:flutter/material.dart';
    class AnonClass{
    bool anon = false ;
    static var context ;
    static void get_context(BuildContext context){
    AnonClass.context = context;
    }
    Widget get_widget(){

    }
    }
 */
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
  var vali = new ValidClass() ;
  bool anon  = false ;
  @override
  void anonchange(bool value) => setState(() => anon = value);

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
          ) ,
          SliverToBoxAdapter(
            child :  new Checkbox(value: anon, onChanged: anonchange),

          )  ,
          SliverToBoxAdapter(
            child : RaisedButton(
              onPressed: (){
                vali.ret_asset(rowi.mood , feedi.controller , anon);
                vali.print_asset() ;
              }
            ) ,
          ) ,
        ] ,
      ) ,
   ) ;
  }
}
