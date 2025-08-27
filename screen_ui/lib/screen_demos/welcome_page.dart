import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  final titleText = "Create Your Future";
  final contentText = "Pariatur ullamco sunt dolore Lorem exercitation voluptate. Deserunt id consectetur minim sunt non ea in adipisicing culpa sint reprehenderit nisi.";
  final  buttonText = "Create an account";
  final  textButtonText = "Login to your account";
  final  appTitle = "Future Box";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar
      (backgroundColor: PageColors.bluegray,
      leading: const Icon(Icons.arrow_back),
      actions: const [
        Icon(Icons.person_2_rounded),
        Icon(Icons.settings),

      ],
      title: Text(appTitle),
      centerTitle: true,

      ),
      backgroundColor: PageColors.bluegray,
      body:  
      Padding(
        padding: PaddingItems.horizontalPadding + PaddingItems.paddingTop,
        child: Column(
          children: [
          Image.asset(ImageItems().logo),
          const SpaceRow(variable: 30),
          Text(titleText, 
          style:  titleStyle(),),
          const SpaceRow(variable: 30),
          Text(contentText, textAlign: TextAlign.center, style: contentTextStyle(),),
          const Spacer(),
          ElevatedButton(onPressed: (){} ,  child:  SizedBox(
            height: 50,
            child: Center(
              child : Text(buttonText, style: const TextStyle(fontSize: 16),)

            ),
          ) ), 
          TextButton(onPressed: (){} , child:  Text(textButtonText, style: const TextStyle(color: PageColors.white, fontSize: 12) ) ),

          const SpaceRow(variable: 30),
        ],),
      ),
    );
  }

  TextStyle contentTextStyle() => const TextStyle(color: PageColors.textColor, fontSize: 14, fontWeight: FontWeight.w500);

  TextStyle titleStyle() => const TextStyle(color: PageColors.titleColor,fontSize: 18, fontWeight: FontWeight.w800,wordSpacing: 5, letterSpacing: 3);
}

class PageText extends StatelessWidget{
  const PageText({super.key, required this.title});

  final String? title ;

  @override
  Widget build(BuildContext context) {
    return Text("$title");
  }

}

class SpaceRow extends StatelessWidget {
  const SpaceRow({super.key, required this.variable});

  final double variable;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: variable);
  }

}

class PaddingItems {
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
  static const EdgeInsets paddingTop = EdgeInsets.only(top: 40);
  
}

class ImageItems {
  final String logo = "assets/png/education.png" ;
}

class PageColors {
  //static const Color bluegray = Color.fromARGB(131, 173, 181, 185);
  static const Color bluegray = Color.fromARGB(131, 216, 221, 224);
  static const Color white = Colors.white;
  static const Color textColor = Color.fromARGB(255, 29, 28, 28);
  static const Color titleColor= Color.fromARGB(214, 248, 193, 27);
}
