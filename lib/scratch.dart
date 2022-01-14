import 'dart:io';

void main() {
  performTasks();
}

void performTasks()async  {
  task1();
  String task2Data= await task2();
  task3(task2Data);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2()  async{
  String result;
  Duration duration=Duration(seconds: 10);
  await Future.delayed(duration,(){


    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;


}

void task3(task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete $task2Data');
}