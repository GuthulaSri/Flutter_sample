import 'package:flutter/material.dart';
import 'package:flutter_project/pages/currency_converter_material_page.dart';

void main(){
  runApp(const MyApp());
}

//Types of widgets
//1.Stateless widget
//2.Stateful widget
//3.Inherited widgets

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){

   return const MaterialApp(
    home: CurrencyConverter(),
     // debugShowCheckedModeBanner: false,
     // home: mydashboard()
   );

  }
}


// class mydashboard extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:
//       AppBar(
//
//         title: Text("my dashboard"),
//         backgroundColor: Colors.orangeAccent,
//       ),
//       body: Center(child: Text("hello world")),
//
//     );
// }
// }

  // class MyApp extends StatelessWidget{
  // const MyApp({super.key});
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //           title: Text('My Dashboard'),
  //           backgroundColor: Colors.blue,
  //     ),
  //   body: Center(child: Text('Welcome Back')
  //   ),
  //
  //     ),
  //         debugShowCheckedModeBanner: false,
  //   );
  // }
  //
  // }




