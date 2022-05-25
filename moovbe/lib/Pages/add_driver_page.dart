import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moovbe/constants.dart';
import 'package:moovbe/widgets.dart';

class AddDriverPage extends StatelessWidget {
  const AddDriverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: secondaryColor,
    ));
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: width * 0.2,
                width: width,
                color: secondaryColor,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 1.3,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 110),
                    textWidget(
                      text: 'Add Driver',
                      size: headLine3,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: 'Enter Name',
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
                    hintText: 'Enter License Numeber',
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                /*  Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage())); */
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: buttonWidget(
                    text: 'Save',
                    width: MediaQuery.of(context).size.width,
                    color: primaryColor,
                    textColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
