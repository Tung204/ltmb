import 'dart:io';

void main(){
  //nhap ten nguoi dung
  stdout.write('Enter your name: ');
  String name = stdin.readLineSync()!;

  //Nhap tuoi nguoi dung 
  stdout.write('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);

  print("Hello: $name, your age is: $age");
}