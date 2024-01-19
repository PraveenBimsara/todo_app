import 'package:flutter/material.dart';
import 'package:todo_app/util/my_add_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 241, 226, 89),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new task"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  text: 'Save',
                  onPressed: () {},
                  onPrssed: onSave,
                ),
                SizedBox(
                  width: 8,
                ),
                MyButton(
                  text: 'Cancel',
                  onPressed: () {},
                  onPrssed: onCancel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
