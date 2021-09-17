import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/pages/screens/auth/widgets/signup_form.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: ListView(
            //   crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: AlignmentDirectional.topEnd,
                padding: const EdgeInsetsDirectional.only(end: 20),
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: Text(AppLocalizations.of(context)!.skip)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  AppLocalizations.of(context)!.createAnAccount,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  AppLocalizations.of(context)!.welcomeEnterYourDetails,
                  style: Theme.of(context).textTheme.bodyText2!,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SignUpForm(),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        onPrimary: Theme.of(context).colorScheme.onSurface,
                        primary: Theme.of(context).colorScheme.surface),
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/google_logo.png",
                      height: 30,
                      width: 30,
                    ),
                    label:
                        Text(AppLocalizations.of(context)!.signInWithGoogle)),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(AppLocalizations.of(context)!.signInWithGoogle),
                  style:
                      Theme.of(context).elevatedButtonTheme.style!.copyWith(),
                ),
              ),
              SizedBox(
                height: 60,
                child: TextButton(
                  child: Text(AppLocalizations.of(context)!.loginToMyAccount),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
