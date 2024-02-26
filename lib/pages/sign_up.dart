import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_sigin/pages/login.dartt.dart';

import '../widget/button.dart';
import '../widget/forgetpassword.dart';
import '../widget/login_with_socail.dart';
import '../widget/text_filed.dartt.dart';

class Sigin extends StatelessWidget {
  const Sigin({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: screenWidth,
            height: screenHeight,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/sign.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: screenWidth *0.09,),
                Center(
                  child: SizedBox(
                    width: screenWidth * 0.4,
                    child: Text("Fish Word",
                        style:  GoogleFonts.itim(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 35,
                        )
                    ),
                  ),
                ),
                const Image(image: AssetImage("assets/logo.png",),
                  width:130.6 ,
                  height:130,
                ),
                Text("Please fill the  details and create account",
                  style: GoogleFonts.itim(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: text_filed(title: "UserName", icon: Icons.person, onPressed: (){}),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: text_filed(title: "Birth Of Date", icon: Icons.date_range, onPressed: (){}),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: text_filed(title: "Email", icon: Icons.email, onPressed: (){}),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: text_filed(title: "Password", icon: Icons.lock, onPressed: (){}),
                ),

                ///Button
                Button(text: "Sign Up", onTapp: (){}),
                ///ForgetPassword
                const SizedBox(height: 10,),
                ForgotpText(text: "Login", onClick: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()))),
                ///LoginWithSocial
                const SizedBox(height: 10,),
                LoginWithSocial(),


              ],
            ),
          ),
        )
    );
  }
}