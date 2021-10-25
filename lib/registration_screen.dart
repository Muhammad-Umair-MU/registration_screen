// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:registration_screen/constants.dart';
import 'package:registration_screen/splash_screen.dart';

dynamic radioValue = false;

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Lottie.asset('assets/animation.json'),
            ),
            SizedBox(height: 50.0),
            textField(
              textInputType: TextInputType.emailAddress,
              hint: 'e-mail',
            ),
            textField(
              textInputType: TextInputType.visiblePassword,
              hint: 'password',
            ),
            textField(
              textInputType: TextInputType.visiblePassword,
              hint: 'repeat password',
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Sign up with social accounts',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.0, color: Colors.black54),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              iconWidget(
                  fontAwesomeIcons: FontAwesomeIcons.facebookSquare,
                  color: Colors.blue.shade900),
              iconWidget(
                fontAwesomeIcons: FontAwesomeIcons.linkedin,
                color: Color(0xFF2867B2),
              ),
              iconWidget(
                  fontAwesomeIcons: FontAwesomeIcons.twitterSquare,
                  color: Colors.lightBlueAccent),
            ]),
            SizedBox(
              height: 40.0,
            ),
            materialButton(
              label: 'Sign up',
              onPressed: () {},
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Read User licencse Agreement',
                  style: TextStyle(fontSize: 15.0, color: Color(0xFF10C2D0)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class iconWidget extends StatelessWidget {
  const iconWidget({
    Key? key,
    required this.fontAwesomeIcons,
    required this.color,
  }) : super(key: key);

  final IconData fontAwesomeIcons;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.0, top: 15.0, left: 5.0),
      child: Icon(
        fontAwesomeIcons,
        color: color,
        size: 40.0,
      ),
    );
  }
}

class textField extends StatelessWidget {
  const textField({Key? key, required this.textInputType, required this.hint})
      : super(key: key);

  final TextInputType textInputType;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      constraints: BoxConstraints(maxWidth: 330.0, minHeight: 50.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xFF10C2D0),
              blurRadius: 3.0,
              spreadRadius: 1.0,
              offset: Offset(5, 3))
        ],
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
      child: TextField(
          keyboardType: TextInputType.emailAddress,
          textAlign: TextAlign.center,
          decoration: kTextFieldDecoration.copyWith(hintText: hint)),
    );
  }
}





            // Flexible(
            //   child: Hero(
            //     tag: 'animation',
            //     child: Lottie.asset('assets/animation.json'),
            //   ),
            // ),