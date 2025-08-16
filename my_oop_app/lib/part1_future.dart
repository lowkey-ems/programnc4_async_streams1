// File: part1_future.dart

Future<String> getNameLater() {
  return Future.delayed(Duration(seconds: 5), () {
    return 'Your name is BOSSING!';
  });
}

void showMessage() async {
  print('Getting your name...');
  String message = await getNameLater();
  print(message);
}

void main() {
  showMessage();
  print('This runs while waiting...');
}