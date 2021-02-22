import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:minha_ubs/components/input.dart';

class InputsForm extends StatelessWidget {
  final Map formData;

  final GlobalKey<FormState> form;

  InputsForm({
    @required this.formData,
    @required this.form,
  });

  bool emailValidete(String value) {
    return value.trim().isNotEmpty;
  }

  bool passwordValidete(String value) {
    return value.trim().isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: form,
      child: Column(
        children: [
          Input(
            fieldName: 'email',
            icon: FeatherIcons.mail,
            placeholder: 'E-mail',
            formData: formData,
            validation: emailValidete,
          ),
          SizedBox(height: 8),
          Input(
            fieldName: 'password',
            icon: FeatherIcons.lock,
            placeholder: 'Senha',
            formData: formData,
            validation: passwordValidete,
            isPassword: true,
          ),
        ],
      ),
    );
  }
}
