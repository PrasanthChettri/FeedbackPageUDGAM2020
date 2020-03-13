import 'package:flutter/material.dart' ;
//DATA STORAGE AND LAYOUT FOR MOODLIST
class row_b {
  var n_f = 3;
  var mood = [-1, -1, -1];
  var every_card =  [];
  var strings = ["Hospitality"  , "DA" ,"DA"];

  Widget get_mood(int innerIndex, int outer_index) {
    return
       IconButton(
          icon: Icon(Icons.assignment_return),
          onPressed: () {
                    mood[outer_index] = innerIndex;
          }
    );
  }

  void make_card() {
    for (int i = 0; i < this.n_f; i++) {
      every_card.add(
        Card (
          child :
              Column(
                children : [
                  Text(strings[i]) ,
                  Row(
                          mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                            get_mood(0, i), get_mood(1, i), get_mood(2, i),
                          ],
                      ) ,
              ] ,
                  )
        )
        ) ;
    }
  }

  Widget get_widget() {
    make_card() ;
    return Column(
      children: <Widget>[
        every_card[0] ,
        every_card[1] ,
        every_card[2] ,
      ],
    );
  }
}
/**Row(

**/
