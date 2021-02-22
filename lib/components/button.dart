import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minha_ubs/utils/constants.dart';

class Button extends StatelessWidget {
  final Function handleSubmit;
  final String text;
  final bool isLoding;

  Button({
    @required this.handleSubmit,
    @required this.text,
    this.isLoding = false,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 48,
      minWidth: double.infinity,
      disabledColor: Colors.white.withOpacity(.8),
      child: RaisedButton(
        onPressed: isLoding ? null : handleSubmit,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: isLoding
            ? CircularProgressIndicator(
                backgroundColor: Colors.greenAccent[700],
              )
            : Text(
                text,
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
      ),
    );
  }
}
