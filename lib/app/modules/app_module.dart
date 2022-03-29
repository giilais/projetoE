import 'package:petcare/app/modules/app_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:petcare/app/modules/main_page/main_page.dart';
import 'package:petcare/app/shared/auth_store.dart';

class AppModule extends MainModule {
  
  //Dependencias 
  List<Bind> get binds => [
    Bind((i) => AuthStore())
  ];

  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (context, args) => MainPage()),
    //ModularRouter('/home', module: HomeModule()),
    //ModularRouter('/login', module: LoginModule()),
  ];

  Widget get bootstrap => AppWidget();
}
