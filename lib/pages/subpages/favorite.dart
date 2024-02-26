import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

import '../../provider/provider.dart';
class Favoirte extends StatelessWidget {
  const Favoirte({super.key});



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    void showSnackBar ({message}){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message ?? "Order Completed",style: GoogleFonts.itim(fontWeight: FontWeight.w500,color: Colors.white),)
      ,  duration: Duration(milliseconds: 500),
        )
      );
    }
    return Container(

      width: screenWidth,
      height: screenHeight,
      decoration: const BoxDecoration(

          image: DecorationImage(
              image: AssetImage("assets/HomeScreen.png"),
              fit: BoxFit.cover
          )
      ),
                child: Consumer<CartBag>(builder: ( context,  value, child) {
                  return Column(
                    children: [
                      SizedBox(height: screenWidth *0.09,),
                      Center(
                        child: SizedBox(
                          width: screenWidth * 0.4,
                          child: Text("Cart Page",
                              style:  GoogleFonts.itim(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 35,
                              )
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: value.cart_items.length,
                            itemBuilder: (context, index) {
                              return Card(
                                color: Colors.white.withOpacity(0.5 ),
                                child: ListTile(
                                  title: Text(value.cart_items[index][0],style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                  )
                                  ),
                                  subtitle: Text("MMK ${value.cart_items[index][1]} lakhs",style: const TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500
                                  )
                                  ),
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(15), // Adjust the border radius
                                    child: Image.asset(value.cart_items[index][2],width: 80,height :80),
                                  ),
                                  trailing: IconButton(
                                    onPressed: (){
                                      Provider.of<CartBag>(context,listen: false).Removecart(index);
                                    },
                                    icon: Icon(Icons.delete),
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0,
                        horizontal: 85),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text("Total Price",style: GoogleFonts.itim(
                                           fontWeight: FontWeight.w500,
                                           fontSize: 20
                                       ),
                                       ),
                                       Text("MMK ${value.Cacluate_item_price()}lakhs",
                                       style: GoogleFonts.itim(
                                         color: Colors.red,
                                         fontWeight: FontWeight.w500,
                                         fontSize: 15
                                       ),)
                                     ],
                                   ),
                                 ),
                                IconButton(onPressed: showSnackBar,
                                    icon: Icon(Icons.check),
                                color: Colors.green,iconSize: 40,)
                              ],
                            ),
                          ),
                        ),
                      )

                    ],
                  );
                },
                )
              );

    }

  }

