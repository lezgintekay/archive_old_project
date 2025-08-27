import 'package:flutter/material.dart';
import 'package:flutter_application_2/101/core/random_image.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});
  final _cardHeight = 50.0;
  final _cardWidth = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(bottom: _cardHeight / 2, child: const RandomImage(),),
              Positioned(height: _cardHeight, bottom: 0, width: _cardWidth, child: _CustomCard())    
            ],
          )),
          const Spacer(flex: 6,)
        ],
      ),
    );
  }
}

Card _CustomCard() {

return const Card(
color: Colors.white,
shape: RoundedRectangleBorder(),
);

}