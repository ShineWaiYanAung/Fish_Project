import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class text_filed extends StatefulWidget {
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  const text_filed({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed});

  @override
  State<text_filed> createState() => _text_filedState();
}

class _text_filedState extends State<text_filed> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.title,
        labelStyle: GoogleFonts.itim(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.white,
        ),
        prefixIcon: IconButton(
          icon: Icon(widget.icon, color: Colors.white),
          onPressed: widget.onPressed,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}

