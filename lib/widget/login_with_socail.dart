import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWithSocial extends StatelessWidget {
  LoginWithSocial({super.key});
 final List<String> image = [
   "assets/facebook.png",
   "assets/google.png",
   "assets/instrgram.png",
 ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text("Or Connect With",
          style: GoogleFonts.itim(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 15,
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i =0 ; i <3;i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
                child: Image.asset(image[i],scale: 0.8,),
              ),
            ],
          )
        ],
      ),
    );
  }
}
