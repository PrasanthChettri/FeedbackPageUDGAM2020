import 'package:flutter/material.dart' ;
class ValidClass{
  static var  context ;
  var moodlist ;
  var text ;
  var anon ;
  List complain_type ;
  var sent = false;
  static void get_context(BuildContext context) {
    ValidClass.context =context ;
  }
  ret_asset(moodlist , textc , anon , List complain_type){
      this.moodlist = moodlist;
      this.text = textc.text;
      this.anon = anon ;
      this.complain_type  = complain_type ;
      this.sent = true ;
  }
  void print_asset(){
    print([this.moodlist , this.text , this.anon , this.complain_type]) ;
  }

  List get_asset(){
    return [this.moodlist , this.text , this.anon , this.complain_type ] ;
  }
}
