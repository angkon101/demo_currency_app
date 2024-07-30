import 'package:flutter/material.dart';
//import 'package:flutter_application_1/pages/home.dart'; 
// ^ the upper line is also same the the lower line
import './pages/home.dart';
void main(){
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: Home(),
    );
  }

  // Widget build(BuildContext context){
  //   return MaterialApp(
  //     color:Colors.white ,
  //   );
  // }
}