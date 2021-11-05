import 'package:flutter/material.dart';

import 'app_back_button.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          const AppBackButton(),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
