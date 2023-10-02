class CustomException implements Exception {
  late String excep;
  CustomException(this.excep);
}

throwException() {
  throw new CustomException("Exception :");
}

class Person {
  late String firstname;
  late String lastname;
  late int age;
  late String profession;
  late List<String> hobbies;
  Person(BuilderPerson builds) {
    this.firstname = builds.firstname;
    this.lastname = builds.lastname;
    this.age = builds._age;
    this.profession = builds._profession;
    // this.hobbies = builds._hobbies;
  }
  displayinfo() {
    print("Name :$firstname $lastname \nProfession:$profession \nAge: $age");
  }
}

class BuilderPerson {
  late String firstname;
  late String lastname;
  late int _age;
  late String _profession;
  late List<String> _hobbies;
  BuilderPerson({required this.firstname, required this.lastname});

  BuilderPerson setage(int age) {
    try {
      if (age <= 0) {
        throw "Age cannot be less than 0!!";
      }
      this._age = age;
    } catch (e) {
      print("Exception :$e");
    }
    return this;
  }

  BuilderPerson setprofession(String profession) {
    try {
      if (profession == null) {
        throw "profession cannot be empty";
      }
      this._profession = profession;
    } catch (e) {
      print("Exception :$e");
    }
    return this;
  }

  BuilderPerson sethobbies(List<String> hobbies) {
    int i = 0;
    try {
      this._hobbies.forEach((element) {
        element = hobbies[i+1];
      });
      if (hobbies == null) {
        throwException();
      }
    } on CustomException {
      "hobbies cannot be empty";
    }

    return this;
  }

  Person Build() {
    return Person(this);
  }
}
