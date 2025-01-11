void main(){
  final mySquere = new Squere(side: 10);
  mySquere.side = 5;
  print('Area: ${mySquere.calculateArea()}');
  print('Area: ${mySquere.area}');

}

class Squere {

  double _side;//private

  Squere({required double side})
  : assert(side >= 0, 'Side must be side >=0'), 
    _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value){
    print('Setting new value $value');
    if (value<0) throw 'Value must be >=0';

    _side = value;
  }

  double calculateArea(){
    return _side * _side;
  }

}