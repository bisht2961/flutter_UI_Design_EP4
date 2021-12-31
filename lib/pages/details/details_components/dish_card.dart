import 'package:flutter/material.dart';
import 'package:flutter_design_ep4/json/home_page_json.dart';

class DishCard extends StatelessWidget {
  final Size size;
  final int index;
  const DishCard({Key? key,required this.size,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: (size.width-30)*0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                packForYou[index]['description'],
                style: TextStyle(
                  height: 1.3,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                packForYou[0]['price'],
                style: TextStyle(
                  height: 1.3,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15,),
        Expanded(
          child: Container(
            height: 110,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 10,
                bottom: 10,
              ),
              child: Image(
                image: NetworkImage(packForYou[index]['img']),
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}
