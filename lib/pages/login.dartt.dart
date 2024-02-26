import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_sigin/pages/home_screen.dart';
import 'package:login_sigin/pages/sign_up.dart';
import 'package:login_sigin/widget/button.dart';
import 'package:login_sigin/widget/forgetpassword.dart';
import 'package:login_sigin/widget/login_with_socail.dart';
import '../widget/text_filed.dartt.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width:screenWidth,
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
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: text_filed(title: "UserName", icon: Icons.person, onPressed: (){}),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: text_filed(title: "Password", icon: Icons.lock, onPressed: (){}),
              ),

              ///Button
              Button(text: "Login", onTapp: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()))
              ),
              ///ForgetPassword
              SizedBox(height: 15,),
              ForgotpText(text: "Sign Up", onClick: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Sigin()))),
              ///LoginWithSocial
              SizedBox(height: 10,),
              LoginWithSocial(),


            ],
          ),
        ),
      )
    );
  }
}
