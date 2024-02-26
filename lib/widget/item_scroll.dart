import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_sigin/provider/provider.dart';
import 'package:provider/provider.dart';




class item_scroll extends StatelessWidget {
  const item_scroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartBag>(builder: (context,value,child){
      return  GridView.builder(
          itemCount: value.fish_items.length,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ), itemBuilder: (context,index){
        return  SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(value.fish_items[index][2]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(5.0),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("MMK ${value.fish_items[index][1]}lakhs",style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600
                              ) ,
                              ),

                              const Icon(Icons.favorite, size: 20,color: Colors.white,)
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.3),
                                      width: 2
                                  )
                              ),
                              child:  Text(value.fish_items[index][0] , style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 10,
                              ),

                              ),
                            ),
                            IconButton(
                                 onPressed:(){
                                   Provider.of<CartBag>(context,listen: false)
                                       .Add_cart(index);},
                                icon:  Icon(CupertinoIcons.cart, size: 20,color: Colors.white,))
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ),
          ),
        );
      });
    }

    );
  }
}
