void main(){
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true

  };

  // final ironman = new Hero(
  //   name: ' Tony Stark', 
  //   power: 'Money', 
  //   isAlive: rawJson['isAlive'] ?? false
  //   );
  
  final ironman = new Hero.fromJson(rawJson);
  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? false;



  @override
  String toString(){
    return '$name - $power - ${isAlive ? 'Yes': 'No'}';
  }
}