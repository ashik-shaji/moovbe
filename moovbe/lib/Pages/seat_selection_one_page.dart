import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moovbe/Pages/seat_selection_two_page.dart';
import 'package:moovbe/constants.dart';
import 'package:moovbe/widgets.dart';

class SeatSelectionOnePage extends StatelessWidget {
  SeatSelectionOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: secondaryColor,
    ));
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Column(
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
                SizedBox(width: 25),
                textWidget(
                  text: 'KSRTC Swift Scania P-​series',
                  size: headLine3,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 140,
              width: width,
              padding: EdgeInsets.only(top: 23, left: 16, right: 23),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: secondaryColor,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      textWidget(
                        text: 'Rohit sharma',
                        size: headLine2,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      SizedBox(height: 8),
                      textWidget(
                        text: 'License no: PJ515196161655',
                        size: headLine6,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Transform.scale(
                      scale: 1.0,
                      child: Image(image: AssetImage('assets/man.png')))
                ],
              ),
            ),
          ),
          //SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 28),
            child: Container(
              width: width,
              height: height * 0.6,
              padding: EdgeInsets.all(28),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(color: Colors.grey.shade300),
                //color: secondaryColor,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Transform.scale(
                        scale: 1.6,
                        child: Icon(
                          Icons.chair,
                          color: secondaryColor,
                          size: 25,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 22),
                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return seatsWidget();
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 22);
                    },
                    itemCount: 9,
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
