import 'package:petcare/app/modules/app_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  
  //Dependencias 
  List<Bind> get binds => [];

  List<ModularRouter> get routers => [
    ModularRouter('/', child: (context, args) => MyHomePage()),
    ModularRouter(Modular.initialRoute, child: (context, args) => InitialPage())
  ];

  Widget get bootstrap => AppWidget();
}
