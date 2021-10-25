// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:registration_screen/splash_screen.dart';

import 'registration_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Sign in with social accounts',
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
              label: 'Sign in',
              onPressed: () {},
            ),
            SizedBox(height: 17.0),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'Dont have a acccount?',
                  style: TextStyle(color: Colors.black54, fontSize: 15.0)),
              WidgetSpan(
                child: GestureDetector(
                  onTap: (){
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistrationScreen()));
                  },
                    child: Text(
                  ' Register',
                  style: TextStyle(fontSize: 15.0, color: Color(0xFF10B3D0)),
                )),
              )
            ])),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Read User licencse Agreement',
                  style: TextStyle(fontSize: 15.0, color: Color(0xFF10B3D0)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//  Hero(
//       tag: 'animation',
//       child: Flexible(

//         child: Lottie.network(
//             'https://assets3.lottiefiles.com/private_files/lf30_eaigvcxb.json',height:200.0),
//       )),
