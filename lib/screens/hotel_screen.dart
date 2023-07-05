import 'package:air_book_p3/utils/app_layout.dart';
import 'package:air_book_p3/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}):super(key:key);

  @override
  Widget build(BuildContext context) {

    final size= AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17), //makes only blue box
      margin:   EdgeInsets.only(right: 17, top: 5),// makes space between 2 cards
      decoration: BoxDecoration(
        color: Styles.primaryColor,   //behind background blue color
        borderRadius: BorderRadius.circular(24),
        boxShadow: [ //Box shadow takes lists of shadows
          BoxShadow(
            color: Colors.grey,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/${hotel['image']}'),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          SizedBox(height: 5),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
