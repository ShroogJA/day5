import 'package:faker/faker.dart';
import 'personmodel.dart';


class PersonController{
 var faker=Faker();
static List<PersonModel>personall=[];


 List<PersonModel> addPerson(){
     personall=   List.generate(20, (index) =>
     PersonModel(name: faker.person.name(), email:faker.internet.email()));

     return personall;

  }

}