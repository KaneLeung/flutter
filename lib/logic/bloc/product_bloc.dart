import 'dart:async';

import 'package:flutter_two/logic/viewmodel/product_view_model.dart';
import 'package:flutter_two/model/product.dart';

class ProductBloc {
  final ProductViewModel productViewModel = ProductViewModel();
  final productController = StreamController<List<Product>>();
  Stream<List<Product>> get productItems => productController.stream;

  ProductBloc() {
    productController.add(productViewModel.getProducts());
  }
}
