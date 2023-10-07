import 'package:store_mobile1/productmodel.dart';

class ShoppingCardController{
  List<ProductModel>_produckcard=[];
  addProductToCard(ProductModel product){
    _produckcard.add(product);
  }
  removeProductFromCard(ProductModel product){
    _produckcard.remove(product);
  }
  List<ProductModel> get productcard=>_produckcard;
  total(){}

}