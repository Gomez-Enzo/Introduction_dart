void main() async {
  print(' Start of program');
  try {
    final value = await httpGet('https://enzo-gomez.com');
    print(value);
    
  } catch (err) {
    print('We have a error: $err');
  }
  
  print('End of program');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  return 'we have a request value';
}