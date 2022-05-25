import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moovbe/Pages/add_driver_page.dart';
import 'package:moovbe/constants.dart';
import 'package:moovbe/widgets.dart';

class DriverListPage extends StatelessWidget {
  const DriverListPage({Key? key}) : super(key: key);

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
                      text: 'Driver List',
                      size: headLine3,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: textWidget(
                    text: '21 Drivers Found',
                    size: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        /*  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SeatSelectionOnePage())); */
                      },
                      child: listTileWidget(
                        title: 'Rohit sharma',
                        subTitle: 'Licn no: PJ5151961616',
                        buttonText: 'Delete',
                        width: width,
                        img: 'assets/girl.png',
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 18);
                  },
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddDriverPage()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: buttonWidget(
                    text: 'Add Driver',
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
