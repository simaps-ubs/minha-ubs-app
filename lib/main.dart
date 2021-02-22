import 'package:flutter/material.dart';
import 'package:minha_ubs/screens/home/home_screen.dart';
import 'package:minha_ubs/screens/signIn/signIn_screen.dart';
import 'package:minha_ubs/screens/signUp/signUp_screen.dart';
import 'package:minha_ubs/utils/app_routes.dart';
import 'package:minha_ubs/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // primarySwatch: kPrimaryColor,

          primaryColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRoutes.HOME: (ctx) => Home(),
          AppRoutes.SIGNIN: (ctx) => SignIn(),
          AppRoutes.SIGNUP: (ctx) => SignUpScreen(),
        },
      ),
    );
  }
}
