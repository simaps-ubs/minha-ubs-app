import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minha_ubs/components/button.dart';
import 'package:minha_ubs/screens/signIn/components/inputs_form.dart';
import 'package:minha_ubs/screens/signIn/components/logo_container.dart';
import 'package:minha_ubs/utils/app_routes.dart';
import 'package:minha_ubs/utils/constants.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _form = GlobalKey<FormState>();
  final _formData = Map<String, Object>();
  bool _isLoding = false;

  void handleSubmit() {
    bool isVAlid = _form.currentState.validate();
    if (!isVAlid) return;
    _form.currentState.save();
    print(_formData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (ctx, constraints) => Container(
          height: constraints.maxHeight,
          decoration: BoxDecoration(
            color: kPrimaryColor,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: constraints.maxHeight * .15),
                  LogoContianer(),
                  SizedBox(height: constraints.maxHeight * .10),
                  Text(
                    'LOGIN',
                    style: GoogleFonts.roboto(
                      color: Color(0xFFF7F9FC),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 24),
                  InputsForm(
                    form: _form,
                    formData: _formData,
                  ),
                  SizedBox(height: 16),
                  Button(
                    handleSubmit: handleSubmit,
                    text: 'Entrar',
                    isLoding: _isLoding,
                  ),
                  SizedBox(height: 24),
                  InkWell(
                    onTap: () {},
                    child: Text('Esqueci minha senha'),
                  ),
                  SizedBox(height: constraints.maxHeight * .1),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutes.SIGNUP);
                    },
                    child: Text(
                      'Criar conta',
                      style: GoogleFonts.roboto(
                        color: Color(0xFF8A8D97),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
