import 'package:flutter/material.dart';
//import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcare/app/shared/theme_utils.dart';
import 'package:petcare/app/modules/login/buttons/facebook_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.only(top: ScreenUtil.statusBarHeight + 30),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Image.asset('lib/assets/images/logo.jpeg',
                    width: ScreenUtil().setWidth(400), fit: BoxFit.fill),

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
                    ),
                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        height: 60,
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
                    FacebookButton(
                      onTap: () => (null),
                    ),
                    Divider(),
                    FlatButton(onPressed: () => {}, child: Text('Cadastre-se'))
                  ],
                ))
              ],
            )));
  }
}

// void _buildForm(Form) {
//   return Form(
//       child: Column(
//     children: <Widget>[
//       TextFormField(
//         decoration: InputDecoration(
//             labelText: 'Email',
//             labelStyle: TextStyle(fontSize: 15),
//             border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(50), gapPadding: 0)),
//       ),
//       SizedBox(
//         height: 20,
//       ),
//       TextFormField(
//         decoration: InputDecoration(
//             labelText: 'Senha',
//             labelStyle: TextStyle(fontSize: 15),
//             border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(50), gapPadding: 0)),
//       ),
//       Container(
//           width: double.infinity,
//           padding: EdgeInsets.all(10),
//           height: 60,
//           child: RaisedButton(
//             onPressed: () {},
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20)),
//             color: ThemeUtils.primaryColor,
//             child: Text('Entrar',
//                 style: TextStyle(fontSize: 20, color: Colors.black)),
//           )),
//       Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//         child: Row(
//           children: <Widget>[
//             Expanded(
//                 child: Divider(
//               color: ThemeUtils.primaryColorDark,
//               thickness: 1,
//             )),
//             Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text('ou',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                         color: ThemeUtils.primaryColorDark))),
//             Expanded(
//               child: Divider(
//                 color: ThemeUtils.primaryColorDark,
//                 thickness: 1,
//               ),
//             ),
//           ],
//         ),
//       ),
//       FacebookButton(
//         onTap: () => (null),
//       ),
//       Divider(),
//       FlatButton(onPressed: () => {}, child: Text('Cadastre-se'))
//     ],
//   ));
// }
