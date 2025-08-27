import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});
  final String tittle = "Welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(tittle),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.person))
          ]),
    );
  }
}

