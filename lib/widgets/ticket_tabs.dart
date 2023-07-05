import 'package:air_book_p3/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({Key? key, required this.firstTab, required this.secondTab, }):super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        child: Row(
          children: [
            /*
                Airline Tickets
                 */
            Container(
              width: size.width*.44,  //Airline Ticket's white shade takes more ahead
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(    // White backgrnd color for Airline Tickets
                borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  firstTab,
                ),
              ),
            ),
            /*
                Hotels
                 */
            Container(
              width: size.width*.44,  //Airline Ticket's white shade takes more ahead
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(    // White backgrnd color for Airline Tickets
                borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text(
                  secondTab,

                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xFFF4F6FD),
        ),
      ),
    );
  }
}
