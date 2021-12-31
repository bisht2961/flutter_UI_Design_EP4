import 'package:flutter/material.dart';
import 'package:flutter_design_ep4/json/home_page_json.dart';
import 'package:flutter_design_ep4/pages/details/store_detail_page.dart';
import 'package:flutter_design_ep4/pages/home/home_page_components/dish_card.dart';
import 'package:flutter_design_ep4/pages/home/home_page_components/top_menu.dart';
import 'package:flutter_design_ep4/theme/colors.dart';
import 'package:flutter_design_ep4/theme/styles.dart';
import 'package:flutter_design_ep4/widgets/custom_slider.dart';
import 'categories_list.dart';
import 'location_and_timer.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            TopMenu(),
            SizedBox(height: 15,),
            LocationAndTimer(size:size),
            SizedBox(height: 15,),
            CustomSliderWidget(
              items: [
                "assets/images/slide_1.jpg",
                "assets/images/slide_2.jpg",
                "assets/images/slide_3.jpg",
              ],
            ),
            CategoriesList(size: size),
            SizedBox(height: 15,),
            GestureDetector(
              onTap:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => StoreDetailPage(image:firstMenu[0]['img'] ,)
                    )
                );
              },
              child: DishCard(
                size: size,
                type: 1,
                index: 0,
                list: firstMenu,
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: size.width,
              height: 10,
              decoration: BoxDecoration(
                color: textFieldColor,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "More to Explore",
                  style: customTitle,
                  ),
                  SizedBox(height: 15,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          exploreMenu.length,(index){
                            return GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => StoreDetailPage(image:exploreMenu[index]['img'] ,)
                                    )
                                );
                              },
                              child: DishCard(
                                size: size,
                                type: 2,
                                index: index,
                                list: exploreMenu,
                              ),
                            );
                          },
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: size.width,
              height: 10,
              decoration: BoxDecoration(
                color: textFieldColor,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Popular Near You",
                    style: customTitle,
                  ),
                  SizedBox(height: 15,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        popluarNearYou.length,(index){
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StoreDetailPage(image:popluarNearYou[index]['img'] ,)
                                )
                            );
                          },
                          child: DishCard(
                            size: size,
                            type: 2,
                            index: index,
                            list: popluarNearYou,
                          ),
                        );
                      },
                      ),
                    ),
                  )
                ],

              ),
            ),
          ],
        )
      ],
    );
  }
}
