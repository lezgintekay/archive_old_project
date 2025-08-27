import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  final String name = "Lezgin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome $name ${name.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  wordSpacing: 2,
                  letterSpacing: 2,
                  decoration: TextDecoration.underline,
                  fontStyle: FontStyle.italic,
                  color: Colors.indigoAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Hello $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: ProjectStyles.welcome,
            ),
            Text(
              "Hello My name is $name, my name has ${name.length}",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.welcomeColor),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcome = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.overline,
      letterSpacing: 4,
      fontStyle: FontStyle.normal,
      color: Colors.cyan,
      fontSize: 24,
      fontWeight: FontWeight.w900);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}
