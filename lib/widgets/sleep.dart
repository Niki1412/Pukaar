import 'package:flutter/material.dart';

class Sleep extends StatelessWidget {
  var hours = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            'Please enter the number of hours you slept yesterday',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter hours',
          ),
        ),
      ],
    );
  }
}
