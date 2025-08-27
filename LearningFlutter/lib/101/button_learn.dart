import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(onPressed: () {}, child: const Text("Save")),
          ElevatedButton(onPressed: () {}, child: const Text("Save")),
          const ElevatedButton(onPressed: null, child: Text("Save")),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_rounded)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(onPressed: () {}, child: const Text("Save")),
          InkWell(
            onTap: () {},
            child: const Text("Save"),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {},
            child: Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
              child: Text(
                "Place Bid",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
