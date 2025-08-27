import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {

FocusNode focusNodeTextBuildOne = FocusNode();
FocusNode focusNodeTextBuildTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: TextField(
              maxLength: 40,
              buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}){
                return _animatedContainer(currentLength);
              },
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              inputFormatters: [_formatter()],
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(),
                  hintText: "Mail",
                  labelText: "Mail",
                  ),
            ),
          ),
        ],
      ),
    );
  }

  TextInputFormatter _formatter() {
    return TextInputFormatter.withFunction((oldValue, newValue) {
          if (newValue.text =="a"){
            return oldValue ;
          }
          else {
            return oldValue;
          }
        });
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
            duration: const Duration(milliseconds: 100),
              height: 10,
              width: 50,
              color: Colors.green[100* (currentLength?? 0)~/2],
          );
  }
}
