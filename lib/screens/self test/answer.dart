import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        color: const Color.fromRGBO(63, 55, 201, 1).withOpacity(0.8),
        textColor: Colors.white,
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
        onPressed: () => selectHandler(),
      ),
    );
  }
}
