abstract class Animal {
  void makeSound();

  void walk();

  void eat();
}

abstract class Animal1 extends Animal {
  void fly();
}

class Cat extends Animal {
  @override
  void eat() {
    // implement eat
  }

  @override
  void makeSound() {
    // implement makeSound
  }

  @override
  void walk() {
    // implement walk
  }
}

class Dog extends Animal {
  @override
  void eat() {
    // implement eat
  }

  @override
  void makeSound() {
    // implement makeSound
  }

  @override
  void walk() {
    // implement walk
  }
}

class Bird extends Animal1 {
  @override
  void eat() {
    //: implement eat
  }

  @override
  void fly() {
    // : implement fly
  }

  @override
  void makeSound() {
    // : implement makeSound
  }

  @override
  void walk() {
    // : implement walk
  }
 
}

void main() {}
/**Liskov subsitution principle
 * */