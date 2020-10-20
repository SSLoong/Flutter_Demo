import 'package:first_flutter_app/main.dart';
import 'package:flutter/cupertino.dart';

class _myHomePageState extends State<MyHomePage> with WidgetsBindingObserver{


  @override
  @mustCallSuper
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);//注册监听器
  }
  @override
  @mustCallSuper
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    print("$state");
    if(state == AppLifecycleState.resumed){
      //do something
    }
  }


}

