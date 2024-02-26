import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function() ? onTapp;
  const Button({super.key,
  required this.text,
  required this.onTapp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
          onTap: onTapp,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF4B8FA5),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Color(0x4B8FA5).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 8
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 12),
            child: Text(
              text,
              style: GoogleFonts.itim(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 30
              ),
            ),
          ),

        ),
      ),
    );
  }
}
