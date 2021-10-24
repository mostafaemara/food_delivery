import 'package:flutter/material.dart';

class UserAccountHeader extends StatelessWidget {
  const UserAccountHeader({
    Key? key,
    required this.userName,
    required this.email,
  }) : super(key: key);
  final String userName;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: Theme.of(context).colorScheme.primary),
          width: 80,
          height: 80,
          child: FittedBox(
            child: Text(
              userName[0].toUpperCase(),
              style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          userName,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          email,
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
      ],
    );
  }
}
