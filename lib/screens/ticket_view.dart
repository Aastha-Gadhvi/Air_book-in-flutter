import 'package:air_book_p3/utils/app_layout.dart';
import 'package:air_book_p3/utils/app_styles.dart';
import 'package:air_book_p3/widgets/column_layout.dart';
import 'package:air_book_p3/widgets/layout_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:air_book_p3/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 165,//GetPlatform.isAndroid==true?167:169
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            /*
            Showing the blue part of the card/ticket
             */
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Color(0xFF526799):Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21) ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
                      ),
                      Spacer(),
                      ThickContainer(isColor: true),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(

                                builder: (BuildContext context, BoxConstraints constraints) {

                                  return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: isColor==null? Colors.white:Colors.grey.shade300,
                                          ),
                                        ),
                                      ))
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor==null? Colors.white:Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      ThickContainer(isColor: true),
                      Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  SizedBox(height: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['from']['name'],
                          style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style:  Styles.headLineStyle4.copyWith(color: Colors.white),//
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            Showing the dotted orange part of the card/ticket
             */
            Container(
              color: isColor==null? Styles.orangeColor:Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? Colors.grey.shade200:Colors.white,  //
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: AppLayoutBuilderWidget(sections: 6),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? Colors.grey.shade200:Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*
            Showing the bottom orange part of the card/ticket
             */
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Styles.orangeColor:Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:0),  //The are not proper in line
                    bottomRight: Radius.circular(isColor==null?21:0) ),
              ),
                padding: EdgeInsets.only(left: 16,top: 10,right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Date',
                            style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Departure Time',
                            style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Number',
                            style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
