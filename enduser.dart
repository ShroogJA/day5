import 'interfaceshow.dart';

abstract class Enduser implements   Dataopration{
  late String name, mobile, idNo, _idType, gender, _age;
  Enduser({required this.name, required this.mobile, required this.idNo,required this.gender});
  set idtype(String idtype) {
    this._idType = idtype;
  }  String get  idtype{
return _idType;
  }
 
//   set gender(String idtype) {
//     this._idType = idtype;
//   }
  
//   String get gender{
// return _gender;
//   }
  set age(String idtype) {
    this._idType = idtype;
  }
  String get age{
return _age;

  } 
}
