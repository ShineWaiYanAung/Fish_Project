import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotpText extends StatelessWidget {
  final String text;
  final void Function() ? onClick;
  const ForgotpText({super.key,
  required this.text,
  required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Already have an account? ",
        style: GoogleFonts.itim(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        ),
        InkWell(
          onTap: onClick,
          child: Text(text,
            style: GoogleFonts.itim(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0xFF4B8FA5),
            ),),
        )
      ],
    );
  }
}
