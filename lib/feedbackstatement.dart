import 'package:flutter/material.dart' ;
class FeedbackField {
  FeedbackField({this.context});
  final controller = TextEditingController();
  List feed_back_type = [0, 0, 0, 0];
  var context;

  Widget get_field() {
    return Column(
      children: <Widget>[
        this.buildFeedbackForm(),
      ],
    );
  }

  buildFeedbackForm() {
    return Container(
      height: 200.0,
      child: Stack(
        children: <Widget>[
          TextField(
            controller: this.controller,
            maxLines: 10,
            decoration: InputDecoration(
                hintText: "Briefly Explain Your Issue",
                hintStyle: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xffc5c5c5),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                )
            ),
          ),
        ],
      ),
    );
  }
}
