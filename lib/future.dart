void main() async {
  String name = "Zuri";
  // var realName = justName(name);
  // print(realName);
  // var expectedName = await futureName(name);
  // print(expectedName);

  //await countDown(5);
  await multiples(10);
}

String justName(String name) {
  return name;
}

// function demonstrates teh use of Future, async, and await
Future<String> futureName(String name) async {
  print("Function Started");
  await Future.delayed(Duration(seconds: 3));
  print("Function Finished");
  return name;
}

// function countdown in seconds [timer] to zero 
Future countDown(int timer) async {
  print("Countdown Started!");
  for (int counter = timer; counter >= 0; counter--) {
    await Future.delayed(Duration(seconds: 1));
    print(counter);
  }
}

// function prints 5 lines, pause for 1 sec before proceeding
Future multiples(int num) async {
  int printCount = 0;
  for (int counter = 100; counter >= 1; counter--) {
    if (counter % num == 0) {
      print(counter);
      printCount++;
    }
    if (printCount % 5 == 0) await Future.delayed(Duration(seconds: 1));
  }
}
