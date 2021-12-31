import 'package:flutter/material.dart';
import 'package:flutter_design_ep4/theme/colors.dart';
import 'package:flutter_design_ep4/theme/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationAndTimer extends StatelessWidget {
  final Size size;
  const LocationAndTimer({Key? key,required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: size.width-70,
          margin: EdgeInsets.only(left: 15),
          height: 45,
          decoration: BoxDecoration(
            color: textFieldColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/images/pin_icon.svg",width: 20,),
                    SizedBox(width:5),
                    Text(
                      "New York",
                      style: customContent,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/images/time_icon.svg",width: 20,),
                        SizedBox(width:8,),
                        Text(
                          "Now",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 2,),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: SvgPicture.asset("assets/images/filter_icon.svg"),
          ),
        )
      ],
    );
  }
}
