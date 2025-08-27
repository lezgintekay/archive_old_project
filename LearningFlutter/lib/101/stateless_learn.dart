
import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:   Column(
        children:  [
          const TitleTextWidget(text: "test1"),
          const TitleTextWidget(text: "test2"),
          _emptyBox(),
          const TitleTextWidget(text: "test3"),
          const TitleTextWidget(text: "test4"),
          const TitleTextWidget(text: "test5"), 
          _emptyBox(),
          const _CustomContainer(),
          _emptyBox()
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 10,width: 10,);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.amber, ),
      height: 70,
      width: 70,
    );
  }
}


class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});

  final String? text ;
  
  @override
  Widget build(BuildContext context) {
    
    return Text(text!, 
    style: Theme.of(context).textTheme.headlineSmall,);
  }

}