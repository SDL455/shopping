import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_online/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'FOODFLOW',
      initialRoute: AppRoutes.splash,
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 300),
    );
  }
}
