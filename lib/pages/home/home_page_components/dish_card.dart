import 'package:flutter/material.dart';
import 'package:flutter_design_ep4/json/home_page_json.dart';
import 'package:flutter_design_ep4/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DishCard extends StatelessWidget {
  final Size size;
  final int type;
  final int index;
  final List list;
  const DishCard({
    Key? key,
    required this.size,
    required this.type,
    required this.index,
    required this.list
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      child: Padding(
        padding: type == 1?
        EdgeInsets.only(
          left: 15,
          right: 15,
        ):
        EdgeInsets.only(
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: 160,
                  child: Image(
                    image: NetworkImage(list[index]['img']),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 15,
                  child: SvgPicture.asset(
                    list[index]['is_liked']?
                    "assets/images/loved_icon.svg":
                    "assets/images/love_icon.svg",
                    width: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Text(
              list[index]['name'],
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Text(
                  "Sponsored",
                  style: TextStyle(
                    fontSize: 14,

                  ),
                ),
                SizedBox(width: 5,),
                Icon(
                  Icons.info,
                  size: 15,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: 8,),
            Text(
              list[index]['description'],
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 8,),
            Row(
                children:[
                  Container(
                    decoration: BoxDecoration(
                      color: textFieldColor ,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Icon(
                        Icons.hourglass_bottom,
                        color: primary,
                        size: 16,
                      ),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    decoration: BoxDecoration(
                      color: textFieldColor,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        list[index]['time'],
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    decoration: BoxDecoration(
                      color: textFieldColor,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: getEndText(type),
                      ),
                    ),
                ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getEndText(int type){
    if(type == 1)
      return putDeliveryFee();
    return putRating();
  }
  Widget putDeliveryFee(){
    return Text(
        firstMenu[0]['delivery_fee'],
        style: TextStyle(
        fontSize: 14,
        )
    );
  }
  Widget putRating(){
    return Row(
      children: [
        Text(
          list[index]['rate'],
          style: TextStyle(
          fontSize: 14,
          ),
        ),
        SizedBox(width: 3,),
        Icon(
          Icons.star,
          color: yellowStar,
          size: 17,
        ),
        SizedBox(width: 3,),
        Text(
          list[index]['rate_number'],
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ]
    );
  }
}
