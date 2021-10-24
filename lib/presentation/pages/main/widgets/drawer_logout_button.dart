import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerLogoutButton extends StatelessWidget {
  const DrawerLogoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: 120,
        child: ElevatedButton(
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.signOut());
            },
            child: Text(AppLocalizations.of(context)!.logout)));
  }
}
