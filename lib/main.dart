import 'package:flutter/material.dart';
import 'moodlist.dart' ;
import 'feedbackstatement.dart' ;
import 'validator.dart' ;

void main() => runApp(MyApp());

//MAIN FILE HAS THE LAYOUT , ALL THE WIDGET ARE IN SEPERATE CLASSES AND THE VALIDATOR CLASS GETS ALL THE ASSETS
//FORM THE CLASSES AFTER SENT BUTTON IS CLICKED
//NOT MUCH TO LOOK HERE VALIDCLASS HAS ALL THE ASSET
//GOTO : VALIDATOR.DART
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
  var cc_ts = TextStyle(color : Colors.blue) ;
  bool  Login_trouble = false;
  bool Personal_Profile = false;
  bool Other_Isssue = false ;
  bool Suggestions = false ;
  //HELPER FUNCTIONS
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  void check_change_lt(bool value) =>setState((){Login_trouble = value;}) ;
  void check_change_pp(bool value) => setState((){Personal_Profile = value;}) ;
  void check_change_ot(bool value) => setState((){ Other_Isssue= value;}) ;
  void check_change_s(bool value) => setState((){  Suggestions = value;}) ;
  Widget gap(double h) => SliverToBoxAdapter(child: SizedBox(height: h,),) ;
  Widget ret_check(){
    return Column(
      children: <Widget>[
        Row(children: <Widget>[Checkbox(value: Login_trouble, onChanged: check_change_lt) ,  Text( "Login Trouble" , style:  cc_ts,)]) ,
        Row(children : [Checkbox(value: Personal_Profile, onChanged: check_change_pp)  , Text("Personal Profile", style:  cc_ts,)  ]),
        Row(children : [Checkbox(value: Other_Isssue, onChanged: check_change_ot)  , Text("Other Issues", style:  cc_ts,) ]),
        Row(children : [Checkbox(value: Suggestions, onChanged: check_change_s) , Text("Suggestions", style:  cc_ts,)]),
        ] ,
      ) ;
  }
  bool anon  = false ;
  @override
  void anonchange(bool value) => setState(() => anon = value);

  Widget build(BuildContext context) {
   return Scaffold(
       backgroundColor: Colors.white ,
       key : _scaffoldKey  ,
       body :
        CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: Text("Feedback" , style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.white,
          ) ,
          SliverToBoxAdapter(
            child : SizedBox(height: 16.9,) ,
          ),
          SliverToBoxAdapter( child : Text("    Please select your feedback category" , style:  TextStyle(color: Colors.blueGrey),))  ,
          gap(10) ,
          SliverToBoxAdapter(
            child : ret_check() ,
          ) ,
          gap(60.9) ,
          SliverToBoxAdapter(
            child : feedi.get_field()  ,
          ) ,
          gap(60.9) ,
          SliverToBoxAdapter(
            child :  rowi.get_widget()  ,
          ) ,
          gap(60.9) ,
          SliverToBoxAdapter(
            child :  Center( child : Row(
              mainAxisSize: MainAxisSize.min,
              children : [ new Checkbox(value: anon, onChanged: anonchange), Text("Send in feedback Anonymous" , style: TextStyle(color: Colors.blueGrey),)] ,
              ) ,
            )
          )  ,
          gap(10) ,
          SliverToBoxAdapter(
            child : Column(children : [
              MaterialButton(

                padding: EdgeInsets.all(10),
                color: Colors.blue,
                child: Text("SEND" , style:  TextStyle(color: Colors.white),),
                onPressed: (){
                  vali.ret_asset(rowi.mood , feedi.controller , anon , [this.Login_trouble , this.Personal_Profile , this.Other_Isssue , this.Suggestions]);
                  vali.print_asset() ;
                  final snackBar = SnackBar(content: Text('Response Recorded.'));
                  _scaffoldKey.currentState.showSnackBar(snackBar);
                }
            ) ,
            ],
            ) ,
          ) ,
          SliverToBoxAdapter(
            child: Container(height: 50, child: Align(
                alignment: Alignment.bottomCenter,
                child : Text("UDGAM2020\n@NITSIKKIM" , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w200, color:  Colors.grey ,),) ,
              ) ,
            ),
          )
        ] ,
      ) ,
   ) ;
  }
}
