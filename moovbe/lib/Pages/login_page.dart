import 'package:flutter/material.dart';
import 'package:moovbe/Pages/home_page.dart';
import 'package:moovbe/constants.dart';
import 'package:moovbe/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.width;
    double containerHeight = width * 0.7;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: containerHeight,
                    width: width,
                    color: secondaryColor,
                  ),
                  Positioned(
                    right: -90,
                    child: Transform.rotate(
                      angle: 600,
                      child: CustomPaint(
                        painter: TrianglePainter(
                          strokeColor: primaryColor,
                          strokeWidth: 10,
                          paintingStyle: PaintingStyle.fill,
                        ),
                        child: Container(
                          height: containerHeight,
                          width: width,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: containerHeight,
                    width: width,
                    padding: EdgeInsets.all(25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textWidget(
                          text: 'Welcome',
                          size: headLine1,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        textWidget(
                          text: 'Manage your Bus and Drivers',
                          size: headLine3,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 42),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                  ),
                ),
              ),
              SizedBox(height: 17),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: buttonWidget(
                  text: 'Login',
                  width: MediaQuery.of(context).size.width,
                  color: primaryColor,
                  textColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  TrianglePainter(
      {this.strokeColor = Colors.black,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height), paint);
  }

  Path getTrianglePath(double x, double y) {
    return Path()
      ..moveTo(0, y)
      ..lineTo(x / 2, 0)
      ..lineTo(x, y)
      ..lineTo(0, y);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
