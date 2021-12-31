import 'package:flutter/material.dart';
import 'package:flutter_design_ep4/theme/colors.dart';

class TopIconsAndImage extends StatelessWidget {
  final Size size;
  final String image;
  const TopIconsAndImage({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: 150,
          child: Image(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      size: 18,
                    ),
                  ),
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              IconButton(
                icon: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.favorite_border,
                      size: 18,
                    ),
                  ),
                ),
                onPressed: (){},
              )
            ],
          ),
        )
      ],
    );
  }
}
