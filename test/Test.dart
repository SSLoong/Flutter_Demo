
import 'package:flutter_test/flutter_test.dart';

printInteger(int a) {
  print('Hello world, this is $a.');
}

main(){
  var number = 2020;
  printInteger(number);
}

int x = 1;
int hex = 0xEEADBEEF;
double y = 1.1;
double exponents = 1.13e5;
int roundY = y.round();


printTestString() {
  var number = 0;
  assert(number == 0);

  var s = 'cat';
  var sl = 'this is a uppercased string: ${s.toUpperCase()}';
  print('sl = $sl');

  var s2 = 'Hello' + ' ' + 'World!';
  print('s2 = $s2');

  var s3 = """This is a
  multi-line string.""";
  print(s3);

}

printTestListAndMap(){
  var arr1 = <String>["Tom","Andy","Jack"];
  var arr2 = new List<int>.of([1,2,3]);
  arr2.add(499);
  arr2.forEach((element) {print('${element}')});
  print(arr2 is List<int>);

  var map1 = <String, String>{"name": "Tom", "sex": "male"};
  var map2 = new Map<String, String>();
  map2['name'] = 'Tom';
  map2['sex'] = 'male';
  map2.forEach((key, value) {print('${key}: ${value}')});
  print(map2 is Map<String, String>);
}

const count = 3;
final name = "Andy";
var x = 70;
var y = 30;
final z = x/y;

bool isZero (int number) {
  return number == 0;
}

void printInfo(int number,Function check) {
  print("$number is Zero: ${check(number)}");
}

void test(){
  Function f = isZero;
  int x = 10;
  int y = 0;
  printInfo(x, f);
  printInfo(y, f);
}
//可选命名参数 加上{}
void enable1Flags({bool bold, bool hidden}) => print("$bold , $hidden");
//可选命名参数增加默认值
void enable2Flags({bool bold = true, bool hidden = false}) => print("$bold , $hidden");
//可忽略参数 加上[]
void enable3Flags(bool bold, [bool hidden]) => print("$bold, $hidden");
//定义可忽略参数时增加默认值
void enable4Flags(bool bold, [bool hidden = false]) => print("$bold ,$hidden");










