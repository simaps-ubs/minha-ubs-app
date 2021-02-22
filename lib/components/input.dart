import 'package:flutter/material.dart';
import 'package:minha_ubs/utils/constants.dart';

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();

  final Map<String, Object> formData;
  final String fieldName;
  final String placeholder;
  final IconData icon;
  final Function(String) validation;
  final bool isPassword;
  final TextInputType inputType;

  Input(
      {@required this.formData,
      @required this.fieldName,
      @required this.placeholder,
      @required this.icon,
      @required this.validation,
      this.isPassword,
      this.inputType});
}

class _InputState extends State<Input> {
  bool _isValid = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: _isValid ? Colors.transparent : Colors.red,
          width: 3,
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          errorStyle: TextStyle(height: 0),
          prefixIcon: Icon(widget.icon),
          hintText: widget.placeholder,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
        ),
        obscureText: widget.isPassword ?? false,
        keyboardType: widget.inputType ?? TextInputType.text,
        onSaved: (value) => widget.formData[widget.fieldName] = value.trim(),
        validator: (value) {
          bool valided = widget.validation(value);
          if (valided) {
            setState(() {
              _isValid = true;
            });
            return null;
          }
          setState(() {
            _isValid = false;
          });
          return '';
        },
      ),
    );
  }
}
