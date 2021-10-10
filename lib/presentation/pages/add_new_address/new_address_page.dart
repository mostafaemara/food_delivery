import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/pages/add_new_address/widgets/new_address_app_bar.dart';
import 'package:food_delivery_app/presentation/pages/add_new_address/widgets/new_address_form.dart';

class NewAddressPage extends StatefulWidget {
  const NewAddressPage({Key? key}) : super(key: key);

  @override
  _NewAddressPageState createState() => _NewAddressPageState();
}

class _NewAddressPageState extends State<NewAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [const NewAddressesAppBar(), NewAddressForm()],
      ),
    );
  }
}
