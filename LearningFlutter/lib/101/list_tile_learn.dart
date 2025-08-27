import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  final ImageUrl = "https://picsum.photos/200/300";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:   Column(children: [
        ListTile(
          title:Image.network(ImageUrl, height: 100, fit: BoxFit.cover, ),
          dense: true,
          contentPadding: EdgeInsets.zero,
          onTap :() {},
          subtitle: const Text("How do you use your card?"),
          leading: const Icon(Icons.shopping_bag),
          trailing: const Icon(Icons.chevron_right),
        )
      ],) ,
    );
  }
}