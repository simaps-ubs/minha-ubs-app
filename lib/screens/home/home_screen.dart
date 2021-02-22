import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minha_ubs/utils/constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha UBS'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Spacer(),
            SvgPicture.asset('assets/icons/no_ubs.svg'),
            Text(
              'Você ainda não tem um cadastro em uma UBS?',
              style: GoogleFonts.roboto(
                color: Color(0xFF0484EA),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            Text(
              'Faça o seu cadastro e encontre a sua UBS!',
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: kTextSecundColor,
              ),
            ),
            Spacer(),
            Spacer(),
            ButtonTheme(
              minWidth: double.infinity,
              padding: EdgeInsets.all(14),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                onPressed: () {},
                color: kPrimaryColor,
                child: Text(
                  'Faça o seu cadastro!',
                  style: GoogleFonts.roboto(
                    color: Color(0xFFE0EAFC),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Spacer(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
