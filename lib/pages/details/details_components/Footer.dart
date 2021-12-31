import 'package:flutter/material.dart';
import 'package:flutter_design_ep4/theme/colors.dart';

class Footer extends StatelessWidget {
  final Size size;
  const Footer({Key? key,required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: size.width,
      decoration: BoxDecoration(
        color: white,
        border: Border(
          top: BorderSide(
              color: black.withOpacity(0.1)
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Text(
              "\$15.00 away from a \$0.00 delivery fee.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: primary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
