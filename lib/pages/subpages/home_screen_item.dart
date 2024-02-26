import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_sigin/widget/search.dart';

import '../../widget/item_scroll.dart';

class HomeScreenItem extends StatefulWidget {
  const HomeScreenItem({super.key});

  @override
  State<HomeScreenItem> createState() => _HomeScreenItemState();
}

class _HomeScreenItemState extends State<HomeScreenItem> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: const BoxDecoration(

          image: DecorationImage(
              image: AssetImage("assets/HomeScreen.png"),
              fit: BoxFit.cover
          )
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
          const SizedBox(height: 15,),
          const SearchDemo(),
          SizedBox(height: screenHeight*0.1,),
          const Expanded(child: item_scroll()),
          //  BottomNav()
        ],
      ),
    );
  }
}
