import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:petcare/app/core/theme_petcare.dart';

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TITULO TESTE',
      navigatorKey: Modular.navigatorKey,
      initialRoute: '/',
      theme: ThemePetCare.theme(),
      onGenerateRoute: Modular.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
