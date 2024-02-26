import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_sigin/pages/login.dartt.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width:screenWidth,
        height: screenHeight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Welcomepage.png'),
                fit: BoxFit.cover
              ),
            ),
       child: Column(
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
             width:140.6 ,
             height:150,
           ),
           SizedBox(height: screenWidth * 1,),
           GestureDetector(
             onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login())),
             child: Container(
               padding: EdgeInsets.all(15),
               decoration: BoxDecoration(
                 color: Color(0xFF4B8FA5),
                 borderRadius: BorderRadius.circular(30),
                 boxShadow: [BoxShadow(
                   color: Color(0xFF4B8FA5).withOpacity(0.8),
                   spreadRadius: 2,
                   blurRadius: 5
                 )]
               ),
               child: Text("Buy Now!",
               style: GoogleFonts.itim(
                 fontWeight: FontWeight.w500,
                 fontSize: 45,
                 color: Colors.white
               ),),
             ),
           )

         ],
         
       ),
      ),
    );
  }
}
