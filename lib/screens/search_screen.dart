import 'package:air_book_p3/utils/app_layout.dart';
import 'package:air_book_p3/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'package:air_book_p3/widgets/icon_text_widget.dart';
import 'package:air_book_p3/widgets/double_text_widget.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Text(
            'What are \nYou looking for?',
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          SizedBox(height: 20),
          AppTicketTabs(firstTab: 'Airline Tickets',secondTab: 'Hotels'),
          SizedBox(height: 25),
          //AppIconTxt(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          AppIconTxt(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          SizedBox(height: 20),
          //AppIconTxt(icon: Icons.flight_land_rounded, text: 'Arrival'),
          AppIconTxt(icon: Icons.flight_land_rounded, text: 'Arrival'),
          SizedBox(height: 25),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18,horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xD91130CE),
            ),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(color: Colors.white, fontSize: 26),
              ),
            ),
          ),
          SizedBox(height: 40),
          //AppDoubleTextWidget(bigText: 'Upcoming Flights', smallText:'View all'),
          AppDoubleTextWidget(bigText: 'Upcoming Flights', smallText:'View all'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 425,
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ]
                ),
                child: Column(   //first long column
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/airplane_seats.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "20% discount on Early Booking of this flight. Don't miss.",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Take the survey about our services and get discount',
                              style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(     //Used for small semicircle at the top in greenish color
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18,color: Color(0xFF189999)),
                          color: Colors.transparent,
                        ),
                      )
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: size.width*0.44,
                    height: 210,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take Smileys',
                          style: Styles.headLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '😄',
                                style: TextStyle(
                                  fontSize: 38,
                                ),
                              ),
                              TextSpan(
                                text: '😉',
                                style: TextStyle(
                                  fontSize: 50,
                                ),
                              ),
                              TextSpan(
                                text: '😇',
                                style: TextStyle(
                                  fontSize: 38,
                                ),
                              ),
                            ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
      ]
    ),
    );
  }
}










