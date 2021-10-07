import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails(
      {Key? key,
      required this.userName,
      required this.phoneNumber,
      required this.email})
      : super(key: key);
  final String userName;
  final String phoneNumber;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: Theme.of(context).textTheme.headline6,
              ),
              const Divider(),
              Text(
                email,
                style: Theme.of(context).textTheme.caption,
              ),
              const Divider(),
              Text(
                phoneNumber,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          )),
    );
  }
}
