import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/application/bloc/edite_profile/edite_profile_cubit.dart';
import 'package:food_delivery_app/application/bloc/profile/profile_cubit.dart';

import 'package:food_delivery_app/presentation/pages/edite_profile/widgets/edite_profile_form.dart';
import 'package:food_delivery_app/presentation/widgets/app_back_button.dart';

class EditeProfilePage extends StatelessWidget {
  const EditeProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: const AppBackButton(),
            ),
            const SizedBox(
              height: 30,
            ),
            BlocProvider(
                lazy: false,
                create: (context) =>
                    EditeProfileCubit(BlocProvider.of<ProfileCubit>(context)),
                child: const EditeProfileForm())
          ],
        ),
      ),
    );
  }
}
