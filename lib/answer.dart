import 'package:flutter/material.dart';
import 'main.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText,
        style: TextStyle(color: Colors.white),),
        onPressed: selectHandler,
        //the function only has to work when the user presess the button so avoid using ()
      ),
    );
  }
}
