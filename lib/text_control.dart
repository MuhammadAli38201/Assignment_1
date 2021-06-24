import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _mainText = "This is the first assignment!";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      
        // ignore: deprecated_member_use
        RaisedButton(
          onPressed: () {
            setState(
              () {
                _mainText = "This Changed";
              },
            );
          },
          child: Text(
            "Change Text",
          ),
        ),
        TextOutput(_mainText),
      ],
    );
  }
}
