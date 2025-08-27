import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.amber,
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: "a"),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: "a")
      ]),
      body: Column(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Text("abc" * 50),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("a" * 50),
          ),
          Container(
            constraints: const BoxConstraints(
                maxWidth: 200, minWidth: 50, maxHeight: 150, minHeight: 10),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectContainerDecoration(),
            child: Text(
              "c" * 100,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      boxShadow: const [
        BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
      ],
      border: Border.all(width: 10, color: Colors.white12));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: const [
              BoxShadow(
                  color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
            ],
            border: Border.all(width: 10, color: Colors.white12));
}
