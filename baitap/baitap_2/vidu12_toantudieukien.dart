/*

expr1 ? expr2 : expr3;
Neu expr1 dung,  tra ve expr2; nguoc lai, tra ve expr3

expr1 ?? expr2;
Neu expr1 not null, tra ve gia tri cua no;
nguoc lai tra ve expr2;

*/

void main(){
  var kiemTra = (100%2==0)?"100 la so chan":"100 la so le";
  print(kiemTra);

  var x = 100;
  var y = x ?? 50;
  print(y);

  int? z;
  y = z??30;
  print(y);
}