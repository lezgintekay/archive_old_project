import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = "Food";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Theme.of(context).colorScheme.background,),
        body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox
              (width: MediaQuery.of(context).size.width,
                child: CustomButton(title: title, onPressed: () {},)),
            )),

            const SizedBox(height: 100,), 
            CustomButton(title: title, onPressed: (){},)
          ],
        ), 
        
        );
  }
}

mixin  _ColorsUtility {
  final Color colorRed = Colors.red;
  final Color colorWhite = Colors.white;
}

mixin _Paddingutility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}


class CustomButton extends StatelessWidget with _ColorsUtility, _Paddingutility {
  CustomButton({super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: colorRed , shape: const StadiumBorder() ),
      onPressed: () {},
      child: Padding(
        padding: normalPadding,
        child: Text(title,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: colorWhite,
                  fontWeight: FontWeight.bold
                )),
      ),
    );
  }
}

