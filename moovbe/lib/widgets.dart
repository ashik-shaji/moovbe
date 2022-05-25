import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moovbe/constants.dart';

Widget buttonWidget(
    {required String text,
    required double width,
    required Color color,
    required Color textColor}) {
  return Container(
    height: 60,
    width: width * 0.92,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: color,
    ),
    child: Center(
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          color: textColor,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

Widget textWidget({
  required String text,
  double? size,
  Color? color,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: GoogleFonts.montserrat(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}

double headLine1 = 41;
double headLine2 = 26;
double headLine3 = 16;
double headLine4 = 15;
double headLine5 = 12;
double headLine6 = 10;

Widget listTileWidget(
    {required String title,
    required String subTitle,
    required String buttonText,
    required double width,
    required String img}) {
  return Material(
    elevation: 3,
    borderRadius: BorderRadius.circular(10),
    child: Container(
      height: 80,
      width: width * 0.92,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              color: Colors.grey.shade200,
            ),
            alignment: Alignment.center,
            child: Transform.scale(
                scale: 1.1, child: Image(image: AssetImage(img))),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textWidget(
                text: title,
                size: 13,
                fontWeight: FontWeight.w500,
                color: secondaryColor,
              ),
              SizedBox(height: 5),
              textWidget(
                text: subTitle,
                size: 13,
                fontWeight: FontWeight.w500,
                color: secondaryColor,
              ),
            ],
          ),
          SizedBox(width: 15),
          Container(
            height: 35,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: primaryColor,
            ),
            child: Center(
              child: textWidget(
                text: buttonText,
                size: headLine5,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget seatsWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Transform.scale(
            scale: 1.6,
            child: Icon(
              Icons.chair,
              color: primaryColor,
              size: 25,
            ),
          ),
          SizedBox(width: 30),
          Transform.scale(
            scale: 1.6,
            child: Icon(
              Icons.chair,
              color: primaryColor,
              size: 25,
            ),
          ),
        ],
      ),
      Row(
        children: [
          Transform.scale(
            scale: 1.6,
            child: Icon(
              Icons.chair,
              color: primaryColor,
              size: 25,
            ),
          ),
          SizedBox(width: 30),
          Transform.scale(
            scale: 1.6,
            child: Icon(
              Icons.chair,
              color: primaryColor,
              size: 25,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget seatsWidgetTwo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Transform.scale(
            scale: 1.6,
            child: Icon(
              Icons.chair,
              color: primaryColor,
              size: 25,
            ),
          ),
        ],
      ),
      Row(
        children: [
          Transform.scale(
            scale: 1.6,
            child: Icon(
              Icons.chair,
              color: primaryColor,
              size: 25,
            ),
          ),
          SizedBox(width: 30),
          Transform.scale(
            scale: 1.6,
            child: Icon(
              Icons.chair,
              color: primaryColor,
              size: 25,
            ),
          ),
          SizedBox(width: 30),
          Transform.scale(
            scale: 1.6,
            child: Icon(
              Icons.chair,
              color: primaryColor,
              size: 25,
            ),
          ),
        ],
      ),
    ],
  );
}
