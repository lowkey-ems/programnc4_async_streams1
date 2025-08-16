// File: part3_streams.dart
// Function that emits numbers 1 to 5 with 1-second delay
Stream<int> numberStream() async* {
  for (var i = 1; i <= 5; i++) {
    yield i; // emit number
    await Future.delayed(Duration(seconds: 3)); // wait 3 seconds
  }
}

void main() {
  // Start listening to the stream
  numberStream().listen((num) {
    print('New: $num');
  });

  print('List of numbers...');
}