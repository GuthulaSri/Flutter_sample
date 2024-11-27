
import 'package:flutter/material.dart';


class CurrencyConverter extends StatefulWidget{

const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {

  double result =0;
  final  TextEditingController textEditingController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    debugPrint('rebuild');
    final border= OutlineInputBorder(
      borderSide:  const BorderSide(
          color: Colors.black,
          width: 2,
          style: BorderStyle.solid
      ),
      borderRadius: BorderRadius.circular(5),
    );
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          elevation: 10,
          title: const Text('Currency Converter', style: TextStyle(color:Colors.white,
          fontSize: 30),),
        centerTitle: true,
        ),

        body:  Center(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text(
                   'INR $result',
                   style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                                 ),
                                 ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: textEditingController,
                    style: const TextStyle(
                      color: Colors.black,
                    ) ,
                    decoration: InputDecoration(
                      hintText: 'Enter your amount here in USD',
                      hintStyle: const TextStyle(
                        color: Colors.black
                      ),
                      prefixIcon: const Icon(Icons.monetization_on),
                      prefixIconColor:Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: border,
                      enabledBorder: border
                      ),
                       keyboardType: const TextInputType.numberWithOptions(
                         decimal: true,
                       ),
                    ),
                    // textInputAction: TextInputAction.done,
                    ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(onPressed: (){
                    // debug mode, release mode, profile mode

                    setState(() {
                      result=double.parse(textEditingController.text)*81;
                    });
                    debugPrint(result.toString());
                  },
                    style:ButtonStyle(
                      elevation:const WidgetStatePropertyAll(15),
                      backgroundColor: const WidgetStatePropertyAll(Colors.black),
                      foregroundColor:const WidgetStatePropertyAll(Colors.white),
                      minimumSize: const WidgetStatePropertyAll(Size(150, 50)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                    ),
                    child: const Text('Convert'),),
                ),
              ],
            ),
        ),
      );

  }
}