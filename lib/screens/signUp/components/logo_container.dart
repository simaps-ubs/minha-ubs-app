import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoContianer extends StatelessWidget {
  const LogoContianer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset('assets/img/logoUBS.png'),
          SizedBox(height: 24),
          Text(
            'Minha UBS',
            style: GoogleFonts.roboto(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'A sua UBS sempre perto de você',
            style: GoogleFonts.roboto(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Color(0xFFD5DDEF),
            ),
          ),
        ],
      ),
    );
  }
}
