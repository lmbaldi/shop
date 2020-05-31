import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = DUMMY_PRODUCTS;
  bool _showFavorieOnly = false;

  // List<Product> get items => [..._items];
  List<Product> get items {
    if(_showFavorieOnly){
      return _items.where((prod) => prod.isFavorite).toList();
    }
    return [..._items];
  }

  void showFavorieOnly(){
    _showFavorieOnly = true;
    notifyListeners();
  }

   void showAll(){
    _showFavorieOnly = false;
    notifyListeners();
  }


  void addProduct(Product product){
    _items.add(product);
    notifyListeners();
  }
}