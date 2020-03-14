import 'package:flutter/material.dart'  ;
//TODO : ADD FIRESTONE  , FIREBASE FUNCTIONALITY
//MAIN CLASS THAT STORES EVERYTHING
class ValidClass{
  //ASSETS
  static var  context ;
  var moodlist ;
  var text ;
  var anon ;
  List complain_type ;
  var finished_map ;
  var spam = false;

  static void get_context(BuildContext context) {
    ValidClass.context =context ;
  }

  void build_map(){
    this.finished_map = {
      'moodscore' : this.moodlist ,
      'feedbacktext' :  this.text ,
      'send_anon' : this.anon  ,
      'complain_type' : {'LoginTrouble'  :  complain_type[0] , 'Personal Profile': complain_type[1]  , 'Other Issues' : complain_type[2] , 'Suggestions' : complain_type[3]}  ,
    } ;
  }
  bool ret_asset(moodlist , textc , anon , List complain_type){
      this.moodlist = moodlist;
      this.text = textc.text;
      this.anon = anon ;
      this.complain_type  = complain_type ;
      //CHECKS IF THE FEEDBACK IS SENT MORE THAN 1 TIME , IF SO DON'T UPLOAD TO DB
      bool temp = this.complain_type[0] || this.complain_type[1] || this.complain_type[2] || this.complain_type[3] ;
      if(moodlist == -1&& this.text  == '' && !temp)
        return false;
      build_map() ;
      this.spam  = true ;
      return true  ;
  }
  Map get_asset(){
    //ALL THE ASSETS ARE RETURNED FROM THIS FUNCION
    //JUST CALL THE FUNC
    return this.finished_map ;
  }
  bool get_spam(){
    //SEE IF THE USER IS SPAMMING THE SENT BUTTON
    return this.spam ;
  }

  void print_asset(){
    print(this.finished_map) ;
  }
}
