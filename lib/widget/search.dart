import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchDemo extends StatefulWidget {
  const SearchDemo({super.key});

  @override
  State<SearchDemo> createState() => _SearchDemoState();
}

class _SearchDemoState extends State<SearchDemo> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
          return  Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 55,
            decoration: BoxDecoration(
                color: const Color(0xFF4B8FA5),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF4B8FA5).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ]
            ),
            child: Stack(
              children:[
                Row(
                    children : [
                      IconButton(onPressed: (){
                        //showSearch(context: context, delegate: ());
                      }, icon: Icon(Icons.search,color: Colors.white,)
                      ),
                      Text("Search",style: GoogleFonts.itim(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                      ),
                    ]
                ),
                const Positioned(
                    bottom: 9,
                    left: 0,
                    right: 0,
                    child: Divider(height: 8,color: Colors.white,))
              ]
            ),

          );

  }
}
