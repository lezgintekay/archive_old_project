

import 'package:flutter/material.dart';
import 'package:flutter_application_2/101/product/language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustomer = 0; 
  final String welcomeTitle = LanguageItems.welcomeTitle;

  void _updateCounter(){
      setState(() {
        ++_counterCustomer ;
      });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:_updateCounter , child: Text("$welcomeTitle $_counterCustomer"));
  }
}