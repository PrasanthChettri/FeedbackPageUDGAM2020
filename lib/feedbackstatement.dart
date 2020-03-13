import 'package:flutter/material.dart' ;
class FeedbackField{
  FeedbackField({this.context}) ;
  final controller = TextEditingController() ;
  var context ;
  Widget get_field(){
    return  Padding(
      padding : EdgeInsets.fromLTRB(10, 0, 10, 0 ) ,child :Container(
      child : TextFormField(
        controller: controller,
          decoration: InputDecoration(
              labelText: 'Enter Feedback'
          ),
        ),
      )
    );
  }
}
