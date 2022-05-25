import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moovbe/Pages/driver_list_page.dart';
import 'package:moovbe/Pages/seat_selection_one_page.dart';
import 'package:moovbe/Pages/seat_selection_two_page.dart';
import 'package:moovbe/constants.dart';
import 'package:moovbe/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: secondaryColor,
    ));
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: width * 0.2,
              width: width,
              color: secondaryColor,
              child: Center(
                child: Transform.scale(
                    scale: 0.7,
                    child: Image(image: AssetImage('assets/moovbe.png'))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const SeatSelectionTwoPage()));
                        },
                        child: Container(
                          height: 220,
                          width: 175,
                          padding:
                              EdgeInsets.only(top: 16, left: 16, bottom: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primaryColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textWidget(
                                text: 'Bus',
                                size: headLine2,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                              SizedBox(height: 2),
                              textWidget(
                                text: 'Manage your Bus',
                                size: headLine6,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Transform.scale(
                                      scale: 1.0,
                                      child: Image(
                                          image: AssetImage('assets/bus.png'))),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DriverListPage()));
                        },
                        child: Container(
                          height: 220,
                          width: 175,
                          padding:
                              EdgeInsets.only(top: 16, left: 16, right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: secondaryColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textWidget(
                                text: 'Driver',
                                size: headLine2,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                              SizedBox(height: 2),
                              textWidget(
                                text: 'Manage your Driver',
                                size: headLine6,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Transform.scale(
                                      scale: 1.22,
                                      child: Image(
                                          image: AssetImage('assets/man.png'))),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  textWidget(
                    text: '21 Buses Found',
                    size: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: height * 0.99,
                    width: width,
                    child: ListView.separated(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SeatSelectionOnePage()));
                          },
                          child: listTileWidget(
                            title: 'KSRTC',
                            subTitle: 'Swift Scania P-​series',
                            buttonText: 'Manage',
                            width: width,
                            img: 'assets/bus2.png',
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 18);
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
