import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:food_delivery_app/presentation/core/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(FoodDeliveryApp());
}
