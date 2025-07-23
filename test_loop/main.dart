void main() async {
  //runDart();
  print('App is initializing...');
  await Future.delayed(Duration.zero, () {
    print('DONE!');
  });
  print('HELLO GUYS AND GIRLS!');
}

// void runDart() {
//   var isRunning = true;
//   int taskCount = 0;
//   while (isRunning) {

//     // executue a part of the logic...until the enture logic has been executed
//     if (taskCount == 100) {
//       isRunning = false;
//     }
//     taskCount++;
//   }
// }
