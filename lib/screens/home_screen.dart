import 'package:air_book_p3/screens/hotel_screen.dart';
import 'package:air_book_p3/screens/ticket_view.dart';
import 'package:air_book_p3/utils/app_info_list.dart';
import 'package:flutter/material.dart';
import 'package:air_book_p3/utils/app_styles.dart';
import 'package:air_book_p3/widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(  // Column : GM, Book .., search bar, Upcom..flights.
             children: [
               SizedBox(height: 40),
               Row(  // Row:  GM, Book Tickets
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning", style: Styles.headLineStyle3,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'BOOK TICKETS',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/air_logo.jpg'),
                        ),
                      ),
                    ),

                  ],
               ),
               SizedBox(height: 25),
               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Color(0xFFF4F6FD),
                 ),
                 padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12), // to move  search icon ahead
                 child: Row(
                   children: [
                     Icon(
                         Icons.search,
                         color: Color(0xFFBFC205)
                     ),
                     Text(
                       'Search',
                       style: Styles.headLineStyle4,
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 40),
               AppDoubleTextWidget(bigText: 'Upcoming Flights', smallText:'View all'),
             ],
           ), 
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            //child: AppDoubleTextWidget(bigText:"Hotels",smallText: "View all"),
            //child: AppDoubleTextWidget(bigText: 'Hotels', smallText:'View all'),
            child: AppDoubleTextWidget(bigText: 'Hotels', smallText:'View all'),
          ),
          //AppDoubleTextWidget(bigText: 'Hotels', smallText:'View all'),
          SizedBox(height: 15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList(),
              ),
          ),
        ],
      ),
    );
  }
}


