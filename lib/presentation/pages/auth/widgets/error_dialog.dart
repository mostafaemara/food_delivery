import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({Key? key, required this.title, required this.body})
      : super(key: key);
  final String title;
  final String body;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      content: Text(body),
      title: Text(title),
      actions: [
        SizedBox(
            height: 50,
            width: 100,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Ok")))
      ],
    )
        //actions: [ElevatedButton(onPressed: () {}, child: Text("ok"))],
        ;
  }
}
