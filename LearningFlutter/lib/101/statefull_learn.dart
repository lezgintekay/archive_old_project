
import 'package:flutter/material.dart';
import 'package:flutter_application_2/101/product/counter_hello_button.dart';
import 'package:flutter_application_2/101/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();

}

class _StatefullLearnState extends State<StatefullLearn> {
    int _countValue =0;

//     void incrementValue() {
    

//       setState(() {
//         _countValue = _countValue+1 ;
//       });

//     }
//     void deincrementValue() {
//       setState(() {
//         _countValue = _countValue -1 ;
// });
//     }    

    void _updateCounter(bool isIncrement){
      if(isIncrement){
        _countValue = _countValue+1 ;
      }
      else {
        _countValue = _countValue -1 ;
      }

      setState(() {});
    }
  @override
  Widget build(BuildContext context) {
    const paddingLeft = EdgeInsets.only(left: 10);
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          Padding(
            padding: paddingLeft,
            child: _deincrementButton(),
          ),
        ],
      
      ),
      body:  Column(
        children: [
          Center(child: Text(_countValue.toString(), style: Theme.of(context).textTheme.displayLarge,),),
          const Placeholder(),
          const CounterHelloButton()
        ],
      ),
    );
  }

  FloatingActionButton _deincrementButton() => FloatingActionButton(onPressed: (){
    _updateCounter(false);
  }, child: const Icon(Icons.remove));

  FloatingActionButton _incrementButton() => FloatingActionButton(onPressed: (){
    _updateCounter(true);
  }, child: const Icon(Icons.add));
}