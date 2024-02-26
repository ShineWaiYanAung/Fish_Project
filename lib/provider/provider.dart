import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CartBag extends ChangeNotifier{

    final List _fish_items =[
      ["RainBowFish", "1.00","assets/1.png"],
      ["BowFish", "1.4","assets/2.png"],
      ["BlueFish", "3.00","assets/3.png"],
      ["Omega_Fish", "1.50","assets/4.png"],
      ["Fish_hunter", "1.2","assets/5.jpg"] ,
      ["Orange_Fish", "1.2","assets/6.jpg"],
    ];
    final List _cart_items = [];
    get cart_items => _cart_items;
    get fish_items =>  _fish_items;


    void Add_cart (int index){
      _cart_items.add(_fish_items[index]);
      notifyListeners();
    }
    void Removecart(int index){
      _cart_items.removeAt(index);
      notifyListeners();
    }
    String Cacluate_item_price (){
      double totalprice =0;
      for(int i=0; i< _cart_items.length; i++){
        totalprice += double.parse(_cart_items[i][1]);
      }
      return totalprice.toStringAsFixed(2);

    }
}