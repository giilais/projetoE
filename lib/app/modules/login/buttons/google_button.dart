import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class GoogleButton extends StatelessWidget {

  final GestureTapCallback onTap;
  
  const GoogleButton({
    Key key,
    this.onTap,
  }) : super(key: key);


  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(50), border: Border.all(width: 1, color: Color(0xFF4267B3))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: Icon(
                FontAwesome.google,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
