// import 'catogory.dart';

import 'catogory.dart';
import 'suppliers.dart';

class Medicines {
  late String name;
  late double unitPrice;
  late String expireDate;

  late Categorie cat;
  late Supplier suup;
  Medicines(
      {required this.name, required this.unitPrice, required this.expireDate,required this.cat,required this.suup});
   void displayinfo(int id) {
    
    print("ID:${id} name:${name}  mobile:${unitPrice}  address:${expireDate}  category:${cat.name}, suppliers: ${suup.name}");
  }    
      
  
}
