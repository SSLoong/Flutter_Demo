abstract class PrintHelper {
  printInfo() => print(getInfo());
  getInfo();
}

class Meta {
  double price;
  String name;
  Meta(this.name, this.price);
}


class Item extends Meta{
  int count;
  Item(name, price, {this.count = 1}) : super(name, price);
  Item operator+(Item item) => Item(name + item.name, price * count + (item.price * item.count));
  double get totalPrice => this.price * count;

}

 class ShoppingCart extends Meta with PrintHelper{
  DateTime date;
  String code;
  List<Item> bookings;

  double get price => bookings.reduce((value, element) => value + element).price;

  ShoppingCart({name}) : this.withCode(name:name ,code:null);
  ShoppingCart.withCode({name, this.code}) : date = DateTime.now(), super(name,0);



  @override
  getInfo () =>

  '''
  购物车信息：
  ----------------
   商品名 单价 数量 总价
  ----------------
     ${bookings.map((item) => '${item.name} ${item.price} ${item.count} ${item.price * item.count}').join('\n ')}
  -------------------------
    用户名：$name
    优惠码：${code ?? '没有'}
    总价：$price
    Date：$date
  ------------------------- 
  ''';

 }

 void main() {
  ShoppingCart.withCode(name:'孙升隆', code:'120700')
  ..bookings =  [Item('iPhone 12', 6299.0, count: 3),Item('Apple Watch', 2499.0)]
  ..printInfo();

  ShoppingCart(name: 'Peanut')
  ..bookings =  [Item('猫粮', 699.0, count: 1),Item('猫罐头', 299.0, count: 10)]
  ..printInfo();
 }