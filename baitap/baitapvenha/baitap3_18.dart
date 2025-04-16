//Viết chương trình yêu cầu người dùng nhập vào một danh sách số nguyên, sau đó tìm và in ra số lớn nhất trong danh sách.
import 'dart:ffi';
import 'dart:io';
void main()
{
  
//   print('Nhap danh sach so nguyen: ');
//  List <int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();

//  list.sort();
//  print('so lon nhat trong danh sach la: ${list.last}');

 //Viết chương trình yêu cầu người dùng nhập vào một danh sách số nguyên,
//sau đó sắp xếp danh sách theo thứ tự giảm dần và in ra kết quả.

  print('Nhap danh sach so nguyen: ');
  List <int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  list.sort();
  list.reversed;
  list = list.reversed.toList();
  print('danh sach list:$list');

}
