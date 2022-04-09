import 'package:flutter/material.dart';
//import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcare/app/modules/login/buttons/google_button.dart';
import 'package:petcare/app/shared/theme_utils.dart';
import 'package:petcare/app/modules/login/buttons/facebook_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(12.0),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(top: 50.0),
                  child: Image.asset('lib/assets/images/logo.jpeg',
                    width: ScreenUtil().setWidth(500), fit: BoxFit.fill), 
                ),
                
                //Formulario
                Form(
                  child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(fontSize: 15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              gapPadding: 0)),
                      validator: (String value) {
                      if (value.isEmpty) {
                        return 'Login obrigatório';
                      }

                      return null;
                    },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle: TextStyle(fontSize: 15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              gapPadding: 0)),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Senha obrigatória';
                        }
                        return null;
                      },
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        height: 75,
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: ThemeUtils.primaryColor,
                          child: Text('Entrar',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Divider(
                            color: ThemeUtils.primaryColorDark,
                            thickness: 1,
                          )),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('ou',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: ThemeUtils.primaryColorDark))),
                          Expanded(
                            child: Divider(
                              color: ThemeUtils.primaryColorDark,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FacebookButton(
                            onTap: () => (null),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          GoogleButton(
                            onTap: () => (null),
                          ),
                        ],
                      ),
                    ),
                    
                    Divider(),
                      FlatButton(onPressed: () => {}, child: Text('Cadastre-se'))
                  ],
                ))
              ],
            )
        )
    );
  }
}
