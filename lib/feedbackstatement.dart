import 'package:flutter/material.dart' ;
class FeedbackField{
  //FeedbackField(){}
  Widget get_field(){
    return  Padding(
      padding : EdgeInsets.fromLTRB(10, 0, 10, 0 ) ,child :Container(
      child : TextFormField(
          decoration: InputDecoration(
              labelText: 'Enter Feedback'
          ),
        ),
      )
    );
  }
}
/**

**/
