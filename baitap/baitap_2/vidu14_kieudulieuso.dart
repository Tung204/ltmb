void main(){
  //int: kieu so nguyen
  int x = 100;
  //double : kieu so thuc
  double y = 100.5;

  //num: co the chua so nguyen or so thuc

  num z = 100;
  num v = 12.5;

  //chuyen chuoi sang so nguyen

  var one = int.parse('1');
  print(one==1?'TRUE':'FAISE');

  //chuyen chuoi sang so thuc

  var onePointOne = double.parse('1.1');
  print(onePointOne==1.1);

  //so nguyen => chuoi
  String oneAsString = 1.toString();
  print(oneAsString);

  //so thuc => chuoi
  String piAsString = 3.14159.toStringAsExponential(2);
  print(piAsString);

}