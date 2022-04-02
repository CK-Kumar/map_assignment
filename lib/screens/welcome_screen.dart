import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:map_app/widgets/button.dart';
import 'package:map_app/widgets/maps.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(fontSize: 20));
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
              title: 'Welcome to Madrid',
              body: 'Hola, Madrid!',
              image: Image.asset(
                'assets/madrids.png',
                width: 300,
                height: 300,
              ),
              decoration: getPageDecoration()),
          PageViewModel(
              bodyWidget: Maps(40.453053, -3.688344),
              title: 'Santiago Bernabeu'),
          PageViewModel(
              bodyWidget: Maps(40.416729, -3.703339), title: 'Sol-City Center'),
          PageViewModel(
              bodyWidget: Maps(40.415260, -3.684500), title: 'Retiro Park'),
        ],
        next: Row(
          children: [
            Text(
              'Next',
              style: TextStyle(fontSize: 23),
            ),
            Icon(
              Icons.arrow_forward,
            )
          ],
        ),
        done: Buttons(),
        onDone: () {},
      ),
    );
  }
}
