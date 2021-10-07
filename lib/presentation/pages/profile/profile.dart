import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/profile/profile_cubit.dart';
import 'package:food_delivery_app/presentation/pages/profile/widgets/personal_details.dart';
import 'package:food_delivery_app/presentation/pages/profile/widgets/profile_list_item.dart';
import 'package:food_delivery_app/presentation/routes/routes.dart';
import 'package:food_delivery_app/presentation/widgets/app_back_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Text(
                "My profile",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Personal details",
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.editeProfilePage);
                    },
                    child: Text("change")),
              ],
            ),
            BlocConsumer<ProfileCubit, ProfileState>(
              builder: (context, state) {
                return state.user.fold(() => const SizedBox(), (user) {
                  return state.profile.fold(
                      () => PersonalDetails(
                            email: user.email,
                            phoneNumber: "",
                            userName: "",
                          ),
                      (profile) => PersonalDetails(
                            email: user.email,
                            phoneNumber: profile.phoneNumber,
                            userName: profile.userName,
                          ));
                });
              },
              listener: (context, state) {},
            ),
            const SizedBox(
              height: 30,
            ),
            ProfileListItem(
              title: "Faq",
              onTap: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            ProfileListItem(
              title: "Help",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
