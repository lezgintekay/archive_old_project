import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargin.cardMargin,
            color: _CardColors().colorRed,
            shape: const StadiumBorder(),
            child: const SizedBox(
                height: 50,
                width: 300,
                child: Center(child: CardText(cardText: "Hello"))),
          ),
          Card(
            margin: ProjectMargin.cardMargin,
            color: _CardColors().colorBlue,
            shape: const CircleBorder(),
            child: const SizedBox(
              height: 100,
              width: 100,
              child: Center(child: CardText(cardText: "World")),
              
            ),
          ),
          Card(
            margin: ProjectMargin.cardMargin,
            color: _CardColors().colorDeepOrange,
            child: const SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            margin: ProjectMargin.cardMargin,
            color: _CardColors().colorYellow,
            child: const SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            margin: ProjectMargin.cardMargin,
            color: Theme.of(context).colorScheme.errorContainer,
            child: const SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          CustomCard(child: const SizedBox(
            height: 100,
            width: 300,
            child: Center(child: CardText(cardText: "Custom Card"),),
          ),)
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(10);
}

class _CardColors {
  final colorRed = Colors.redAccent;
  final colorYellow = Colors.yellowAccent;
  final colorDeepOrange = Colors.deepOrangeAccent;
  final colorBlue = Colors.blue;
}

class CardText extends StatelessWidget {
  const CardText({super.key, required this.cardText});

  final String? cardText;

  @override
  Widget build(BuildContext context) {
    return Text(cardText!);
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.child});

  final Widget child;

  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargin.cardMargin,
      child: child,
    );
  }
}






// ! Card Widget'ında en çok kullanılan borderlar:
// * StadiumBorder(),CircleBorder(),RoundedRectangeBorder()