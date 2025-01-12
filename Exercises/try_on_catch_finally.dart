void main() async {
  print(' Start of program');
  try {
    final value = await httpGet('https://enzo-gomez.com');
    print('Exit: $value');
    
  } on Exception  catch (err) {
    print('We have an $err');
  } catch (err) {
    print('OOP!! something happened: $err');
  } finally {
    print('End of try and catch');
  }
  
  print('End of program');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('there are no parameters in the URL');
  // throw 'error in the request';
  // return 'we have a request value';
}