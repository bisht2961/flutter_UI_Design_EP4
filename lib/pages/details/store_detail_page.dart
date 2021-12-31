
import 'package:flutter/material.dart';
import 'package:flutter_design_ep4/theme/colors.dart';

import 'details_components/Footer.dart';
import 'details_components/details_body.dart';

class StoreDetailPage extends StatefulWidget {
  final String image;
  const StoreDetailPage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  _StoreDetailPageState createState() => _StoreDetailPageState();
}

class _StoreDetailPageState extends State<StoreDetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: DetailsBody(
        size: size,
        image: widget.image,
      ),
      bottomSheet: Footer(size: size,),
    );
  }
}
