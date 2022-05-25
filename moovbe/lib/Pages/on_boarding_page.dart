import 'package:flutter/material.dart';
import 'package:moovbe/Pages/login_page.dart';
import 'package:moovbe/constants.dart';
import 'package:moovbe/widgets.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Center(
              child: Image(image: AssetImage('assets/moovbe.png')),
            ),
            Positioned(
              bottom: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: buttonWidget(
                  text: 'Get Started',
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  textColor: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
