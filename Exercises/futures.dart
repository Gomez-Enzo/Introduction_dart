void main(){
  print(' Start of program');
  
  httpGet('https://enzo-gomez.com').then((value){
    print(value);
  }).catchError((err){
    print('Error: $err');
  });


  print('End of program');
}

Future<String> httpGet(String url){
  return Future.delayed(Duration(seconds: 1), () {
    throw 'Error en la peticion http';
    // return 'Https request response';
  });
}