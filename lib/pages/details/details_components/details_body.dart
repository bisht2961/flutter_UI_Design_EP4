import 'package:flutter/material.dart';
import 'package:flutter_design_ep4/json/home_page_json.dart';
import 'package:flutter_design_ep4/pages/details/details_components/dish_card.dart';
import 'package:flutter_design_ep4/pages/details/details_components/feedback_text.dart';
import 'package:flutter_design_ep4/pages/details/details_components/top_icons_and_image.dart';
import 'package:flutter_design_ep4/theme/colors.dart';
import 'package:flutter_design_ep4/theme/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import '../../../constants.dart';

class DetailsBody extends StatelessWidget {
  final Size size;
  final String image;
  const DetailsBody({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            TopIconsAndImage(size: size, image: image),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Starbucks (Park Row at Beekman St)",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        width: size.width-30,
                        child: Text(
                          "Cafe - Coffee & Tea - Breakfast and Brunch - Bakery \$",
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.3,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
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
                            "40 - 50 Min",
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
                          child: Row(
                              children: [
                                Text(
                                  "4.7",
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
                                  "16",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Divider(color: black.withOpacity(0.3),),
                  SizedBox(height: 15,),
                  Text(
                    "Store Info",
                    style: customContent,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: (size.width)*0.8,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/pin_icon.svg",
                              color: black.withOpacity(0.5),
                              width: 15,
                            ),
                            SizedBox(width: 8,),
                            Text(
                              "38 Park Row Frnt 4, New York, NY 1003",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "More Info",
                          style: TextStyle(
                            fontSize: 14,
                            color: primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Icon(
                        LineIcons.comment,
                        size: 15,
                        color: primary,
                      ),
                      SizedBox(width: 8,),
                      Text(
                        "People say...",
                        style: TextStyle(
                          fontSize: 14,
                          color: black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          peopleFeedback.length, (index){
                            return FeedbackText(text: peopleFeedback[index]);
                      }),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: size.width-30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: black.withOpacity(0.1))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivery fee",
                            style: TextStyle(
                              color: black.withOpacity(0.5),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Container(
                                width: (size.width-70)*0.8,
                                child: Text(
                                  extraFeeMessage,
                                  style: TextStyle(
                                    fontSize: 14,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Container(
                                width: (size.width-70)*0.2,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: black.withOpacity(0.15),
                                  ),
                                  child: Center(
                                    child: Icon(
                                        Icons.arrow_circle_up_outlined,
                                      color: black.withOpacity(0.4),
                                      size: 18,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Divider(color: black.withOpacity(0.3),),
                  SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Menu",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            LineIcons.search,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Text(
                        "Packed For You",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Column(
                        children: List.generate(
                            packForYou.length, (index){
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 40.0),
                                child: DishCard(
                                  size: size,
                                  index: index,
                                ),
                              );
                        }),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
