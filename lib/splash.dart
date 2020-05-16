import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Splash extends StatefulWidget {
  Splash({Key key, this.title}) : super(key: key);


  final String title;

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {

 @override
  void initState() {
   super.initState();
    Future.delayed(const Duration(milliseconds: 2000),(){
      setState(() {
        Navigator.pushNamed(context, '/main');
      });

    });

    
    
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
return Container(
    height: MediaQuery.of(context).size.height,
  width: MediaQuery.of(context).size.height,
decoration:BoxDecoration(image: DecorationImage(fit:BoxFit.cover,image: AssetImage('assets/splash.jpg'))));

  }


}
