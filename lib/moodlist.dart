import 'package:flutter/material.dart' ;
//DATA STORAGE AND LAYOUT FOR MOODLIST
class row_b {
  var n_f = 3;
  var mood_icons= [Icons.sentiment_very_satisfied , Icons.sentiment_satisfied , Icons.sentiment_neutral , Icons.sentiment_dissatisfied , Icons.sentiment_very_dissatisfied] ;
  var mood  = -1;
  Widget get_mood(int innerIndex) {
    return
       IconButton(
          icon: Icon(mood_icons[innerIndex]),
          color: Colors.yellow[800],
          onPressed: () {
                    mood = innerIndex;
          }
    );
  }

  Widget get_card() {
    return Card(
      child : Row(
        mainAxisSize: MainAxisSize.min,
        children: [get_mood(0), get_mood(1) , get_mood(2) , get_mood(3) ,get_mood(4)] ,
      )
    ) ;
  }
  Widget get_widget() {
    return Column(
      children: <Widget>[
        Text("RATE US" , style: TextStyle(color: Colors.blueGrey),) ,
        SizedBox(height: 10, ),
        get_card()
      ],
    );
  }
}
