/*
  ax^2 + bx + c = 0;
*/
import 'dart:math';
import 'dart:io';
void main(){
  double a = 0, b = 0, c = 0;
  //input a
  do {
    stdout.write('Nhap he so a (a != 0): ');
    String? input = stdin.readLineSync();
    if(input!=null){
      a = double.tryParse(input) ?? 0; //co bat loi
    }
  }while(a == 0);
    //input b

    stdout.write('Nhap he so b: ');
    String? inputb = stdin.readLineSync();
    if(inputb!=null){
      b = double.tryParse(inputb) ?? 0; //co bat loi
    }
    //input c
    stdout.write('Nhap he so a: ');
    String? inputc = stdin.readLineSync();
    if(inputc!=null){
      c = double.tryParse(inputc) ?? 0; //co bat loi
    }

  // tinh delta:
  double delta = b*b - 4*a*c;

  //Hien thi phuong trinh rA:
  print('Phuong trinh: ${a}x^2 +${b}x + $c = 0');

  //GPT
  if(delta<0){
    print('Phuong trinh vo nghiem!');

  }else if(delta==0){
    double x = -b/(2*a);
    print("Phuong trinh co nghiem kep x1=x2= ${x.toStringAsFixed(2)}");

  }else{
    double x1 = (-b-sqrt(delta))/(2*a);
    double x2 = (-b+sqrt(delta))/(2*a);
    print('Phuong trinh co 2 nghiem phan biet:');
    print('x1 = ${x1.toStringAsFixed(2)}');
    print('x2 = ${x2.toStringAsFixed(2)}');
  }
}