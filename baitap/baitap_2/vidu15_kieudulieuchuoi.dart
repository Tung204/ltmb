/*
  Chuoi la tap hop ky tu UTF-16
*/

void main(){
  var s1 = 'TUng';
  var s2 = 'hayday';

  //chen gia tri cua 1 bieu thuc, bien vao trong chuoi: ${.....}
  double diemToan = 9.5;
  double diemVan = 7.5;
  var s3 = 'Xin chao $s1, ban da dat tong diem la: ${diemToan+diemVan}';
  print(s3);

  // tao ra chuoi nam o nhieu dong 
  var s4 = '''
        Dong 1
        Dong 2
        Dong 3
    ''';
  var s5 = """
        Dong 1
        Dong 2
        Dong 3
  """;

  var s6 = 'Day la mot doan \n van ban!';
  print(s6);

  var s7 = r'Day la mot doan \n van ban!'; //raw
  print(s7);

  var s8 = "Chuoi 1 " + "Chuoi 2";
  print(s8);

  var s9 = 'chuoi'
            "Nay"
            "la"
            "mot chuoi";
  print(s9);

  
}