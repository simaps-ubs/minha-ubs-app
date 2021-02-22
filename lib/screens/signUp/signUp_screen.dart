import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minha_ubs/components/button.dart';
import 'package:minha_ubs/screens/signUp/components/inputs_form.dart';
import 'package:minha_ubs/screens/signUp/components/logo_container.dart';
import 'package:minha_ubs/utils/constants.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/arrow-left.svg'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        toolbarHeight: 48,
      ),
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
                  LogoContianer(),
                  SizedBox(height: constraints.maxHeight * .10),
                  Text(
                    'CADASTRAR',
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
                    text: 'Cadastrar',
                    isLoding: _isLoding,
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
