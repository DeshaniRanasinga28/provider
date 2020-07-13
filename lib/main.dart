import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/blck/account.dart';
import 'package:providerapp/provider_config.dart';

import 'home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: "Smart Voucher",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
        },
        theme: ThemeData(
            primaryColor: Colors.white,
            primarySwatch: Colors.blue),
        home: HomeScreen(),
      ),
    );
  }
}

