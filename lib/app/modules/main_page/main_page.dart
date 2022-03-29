import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcare/app/shared/auth_store.dart';

class MainPage extends StatelessWidget {
  MainPage() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {

      final authStore = Modular.get<AuthStore>();
      final isLogged = await authStore.isLogged();

      if (isLogged) {
        Modular.to.pushNamedAndRemoveUntil('/home', (_) => false);
      } else {
        Modular.to.pushNamedAndRemoveUntil('/login', (_) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(context);
    
    return Scaffold(
        body: Center(
      child: Container(
        child: Image(
          image: AssetImage('lib/assets/images/logo.jpeg'),
        ),
      ),
    ));
  }
}
