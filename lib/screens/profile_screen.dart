import 'package:air_book_p3/utils/app_styles.dart';
import 'package:air_book_p3/widgets/column_layout.dart';
import 'package:air_book_p3/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/air_logo.jpg',
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Book Tickets',
                      style: Styles.headLineStyle1,
                    ),
                    SizedBox(height: 2),
                    Text(
                        'New-York',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFFFEF4F3),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF526799),
                            ),
                            child: Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Premium status',
                            style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ],
                ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print('You are tapped');
                    },
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor,fontWeight: FontWeight.w300),

                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(color: Colors.grey[300]),
          SizedBox(height: 8),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18)
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: Color(0xFF264CD2),
                      ),
                    ),
                  ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 18),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'v got a new award",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 25,),
          Text(
            'Accumulated Miles',
            style: Styles.headLineStyle1,
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15), //verticle
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: 15,),
                Text(
                  '168465',
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accrued',
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      '23 May 2021',
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Divider(color: Colors.grey[300],),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: '23 042', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false,),
                    AppColumnLayout(firstText: 'Airline CO', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: false,),
                  ],
                ),
                SizedBox(height: 12),
                AppLayoutBuilderWidget(sections: 12, isColor: false),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: '25', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false,),
                    AppColumnLayout(firstText: 'McDonal\'s', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: false,),
                  ],
                ),
                SizedBox(height: 12),
                AppLayoutBuilderWidget(sections: 12, isColor: false),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: '46 654', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false,),
                    AppColumnLayout(firstText: 'Exuma', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: false,),
                  ],
                ),
              ],
            ),

          ),
          SizedBox(height: 25),
          Center(
            child: InkWell(
              onTap: ()=>print('You are tapped'),
              child: Text(
                'How to get more miles',
                style: Styles.textStyle.copyWith(color: Styles.primaryColor,fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
