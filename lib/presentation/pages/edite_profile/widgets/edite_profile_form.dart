import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/edite_profile/edite_profile_cubit.dart';

class EditeProfileForm extends StatelessWidget {
  const EditeProfileForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final editeProfileCubit = BlocProvider.of<EditeProfileCubit>(context);
    return BlocConsumer<EditeProfileCubit, EditeProfileState>(
      builder: (context, state) => Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Edite personal information",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 8, start: 20),
            child: Text(
              "User Name",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          TextFormField(
            initialValue: state.usernameOrfailure
                .fold((failure) => null, (userName) => userName),
            onChanged: editeProfileCubit.userNameChanged,
            decoration: InputDecoration(
                errorText: state.usernameOrfailure.fold((error) {
                  return error.when(
                      invalid: () => "invalid",
                      empty: () => "empty",
                      tooShort: () => "short");
                }, (_) => null),
                hintText: "Enter userName"),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 8, start: 20),
            child: Text(
              "Phone number",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          TextFormField(
            onChanged: editeProfileCubit.phoneNumberChanged,
            initialValue: state.phoneNumberOrfailure
                .fold((error) => null, (phoneNumber) => phoneNumber),
            decoration: InputDecoration(
                errorText: state.phoneNumberOrfailure.fold((error) {
                  return error.when(
                    invalid: () => "Invalid",
                    empty: () => "Empty",
                  );
                }, (_) => null),
                hintText: "Phone number"),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                editeProfileCubit.submitEdite();
              },
              child: const Text("Save"),
              style: Theme.of(context).elevatedButtonTheme.style!.copyWith(),
            ),
          ),
        ],
      )),
      listener: (context, state) {
        if (state.isSuccess) {
          Navigator.of(context).pop();
        }
      },
    );
  }
}
