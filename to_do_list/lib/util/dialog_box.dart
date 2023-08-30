import 'package:flutter/material.dart';
import 'package:to_do_list/util/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromRGBO(158, 179, 132, 1.0),
      content: Container(
        height: 150,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //get user input
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new list",
            ),
          ),

          //button -> save + cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //save button
              Button(text: "Save", onPressed: onSave),

              const SizedBox(width: 8),

              //cancel button
              Button(text: "Cancel", onPressed: onCancel),
            ],
          )
        ]),
      ),
    );
  }
}
