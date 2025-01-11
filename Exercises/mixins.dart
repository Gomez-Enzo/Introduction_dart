void main(){
  final flipper = new Dolphin();
  flipper.Swim();

  final batman = new Bat();
  batman.walk();
  batman.flying();

  final namor = new Duck();
  namor.walk();
  namor.flying();
  namor.Swim();
}
abstract class Animal {
  
}

abstract class Mammal extends Animal{}
abstract class Bird extends Animal{}
abstract class Fish extends Animal{}

mixin Flying{
  void flying() => print('I am flying');
}
mixin Walker{
  void walk() => print('I am walking');
}
mixin Swimmer{
  void Swim() => print('I am swimming');
}


class Dolphin extends Mammal with Swimmer {}
class Bat extends Mammal with Flying, Walker {}
class Cat extends Mammal with Walker {}

class Dove extends Bird with Walker, Flying {}
class Duck extends Bird with Walker, Flying, Swimmer{}
class Shark extends Fish with Swimmer {}
class FlyingFish extends Fish with Swimmer, Flying {}


