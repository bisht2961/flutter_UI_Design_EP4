import 'package:flutter/material.dart';
import 'package:flutter_design_ep4/theme/colors.dart';

class FeedbackText extends StatelessWidget {
  final String text;
  const FeedbackText({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: primary.withOpacity(0.2),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: primary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
