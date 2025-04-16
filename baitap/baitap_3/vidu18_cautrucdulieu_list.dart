void main(){
  // D/N:
  // -list la tap hop cac phan tu co thu tu va co the trung lap
  // cac phan tu duoc truy cap bang chi so(index) tu o
  // kich thuoc co the thay doi duoc 

  List<String> list1 = ['A', 'B', 'C']; // truc tiep
  var list2  = [1,2,3]; //su dung var
  List<String> list3 = []; //list rong 
  var list4 = List<int>.filled(3,0); //list co kien thuc co dinh
  print(list4);

  //1. THem phan tu
  list1.add('D'); // them 1 phan tu
  list1.addAll(['A', 'C']); //them nhieu phan tu
  list1.insert(0, 'Z'); //chen 1 phan tu
  list1.insertAll(1, ['1', '0']);//chen nhieu phan tu
  print(list1);

  //2. Xoa phan tu ben trong list
  list1.remove('A'); // xoa phan tu
  list1.removeAt(0); //xoa phan tu tai vi tri 0
  list1.removeLast; //xoa phan tu  tai vi tri cuoi
  list1.removeWhere((e)=>e=='B'); //xoa theo dieu kien
  list1.clear();
  print(list1);

  //3. truy cap phan tu:
  print(list2[0]); //lay phan tu tai vi tri 0;
  print(list2.first);//lay phan tu dau tien
  print(list2.last); // lay pt cuoi cung
  print(list2.length); //do dai list

  //4.  kiem tra
  print(list2.isEmpty); //kiem tra co rong ko
  print('list 3: ${list3.isNotEmpty?'Khong rong':'rong'}');
  print(list4.contains(1));
  print(list4.indexOf(0));
  print(list4.lastIndexOf(0));

  //5. bien doi
  list4 = [2,1,3 ,9, 0, 10];
  print(list4);
  list4.sort(); // sap xep tang dan
  print(list4);
  list4.reversed; //dao nguoc
  // print(list4.reversed);
  list4 =list4.reversed.toList();
  print(list4);

  //.7 cat va noi
  var subList = list4.sublist(1,3); // cat 1 sublits tu 1 den 3 
  print(subList);
  var str_joined = list4.join(",");
  print(str_joined);

  //8. duyet cac phan tu 
  list4.forEach((element)
  {
    print(element);
  });
}