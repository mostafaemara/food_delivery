import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      content: const SizedBox(
          height: 100, child: Center(child: CircularProgressIndicator())),
      //actions: [ElevatedButton(onPressed: () {}, child: Text("ok"))],
    );
  }
}
