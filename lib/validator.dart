import 'package:flutter/material.dart' ;
class ValidClass{
  static var  context ;
  var moodlist ;
  var text ;
  var anon ;
  static void get_context(BuildContext context) {
    ValidClass.context =context ;
  }
  ret_asset(moodlist , textc , anon){
      this.moodlist = moodlist;
      this.text = textc.text;
      this.anon = anon ;
  }
  void print_asset(){
    print([this.moodlist , this.text , this.anon]) ;
  }
  List get_asset(){
    return [this.moodlist , this.text , this.anon] ;
  }
}
