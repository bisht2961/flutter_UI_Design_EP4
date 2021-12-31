import 'package:flutter/material.dart';
import 'package:flutter_design_ep4/json/home_page_json.dart';
import 'package:flutter_design_ep4/theme/colors.dart';
import 'package:flutter_design_ep4/theme/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesList extends StatelessWidget {
  final Size size;
  const CategoriesList({Key? key,required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: textFieldColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 10,top: 10),
        child: Container(
          decoration: BoxDecoration(color: white),
          child: Padding(
            padding: EdgeInsets.only(top: 15,bottom: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: List.generate(
                      categories.length, (index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Column(
                        children: [
                          SvgPicture.asset(categories[index]['img'],width: 40,),
                          SizedBox(height: 15,),
                          Text(
                            categories[index]['name'],
                            style: customContent,
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
