
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_ep4/json/home_page_json.dart';
import 'package:flutter_design_ep4/theme/colors.dart';


class TopMenu extends StatefulWidget {
  const TopMenu({Key? key}) : super(key: key);

  @override
  _TopMenuState createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(menu.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                activeMenu = index;
              });
            },
            child:ElasticIn(
              child: Container(
                decoration: BoxDecoration(
                  color: activeMenu == index?black:Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, bottom: 8, top: 8),
                  child: Row(
                    children: [
                      Text(
                        menu[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: activeMenu == index?white:black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
