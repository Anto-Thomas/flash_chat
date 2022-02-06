void main() {
  invokeTasks();
}

void invokeTasks() async {
  task1();
  String t = await task2();
  task3();
  task4(t);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration delay = Duration(seconds: 3);
  late String r;
  await Future.delayed(delay, () {
    r = "task 2 data";
    print('Task 2 complete');
  });
  return r;
}

void task3() {
  String result = 'task 3 data';
  print('Task 3 completed');
}

void task4(t2d) {
  String result = 'task 4 data';
  print('Task 4 completed with $t2d');
}
