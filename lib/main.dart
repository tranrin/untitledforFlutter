import 'package:flutter/material.dart';
import 'package:untitled3/Provider/DetailProductProvider.dart';
import 'package:untitled3/productdetail.dart';
import 'package:untitled3/screen/spash/routes.dart';
import 'package:untitled3/screen/spash/size_config.dart';
import 'package:untitled3/screen/spash/theme.dart';
import 'package:provider/provider.dart';
void main() {
  runApp( MyApp() );

}
/*Widget MyApp(){
  return SafeArea(
      child:MaterialApp(
        home: const DetailScreen(id: 15),

      )
  );*/

  class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  title: 'Flutter Demo',
  theme: ThemeData(
  // This is the theme of your application.
  //
  // Try running your application with "flutter run". You'll see the
  // application has a blue toolbar. Then, without quitting the app, try
  // changing the primarySwatch below to Colors.green and then invoke
  // "hot reload" (press "r" in the console where you ran "flutter run",
  // or simply save your changes to "hot reload" in a Flutter IDE).
  // Notice that the counter didn't reset back to zero; the application
  // is not restarted.
  primarySwatch: Colors.blue,
  ),
  home:  const DetailScreen(id: 5),
  );
  }
  }


