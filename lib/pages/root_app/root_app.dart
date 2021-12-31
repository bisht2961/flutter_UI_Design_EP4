import 'package:flutter/material.dart';
import 'package:flutter_design_ep4/pages/home/home_page.dart';
import 'package:flutter_design_ep4/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: _footer(),
    );
  }
  Widget _body(){
    List<Widget> pages = [
      HomePage(),
      Center(
        child: Text(
          "Search Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: black,
          ),
        ),
      ),
      Center(
        child: Text(
          "Grocery Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: black,
          ),
        ),
      ),
      Center(
        child: Text(
          "Orders Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: black,
          ),
        ),
      ),
      Center(
        child: Text(
          "Account Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: black,
          ),
        ),
      ),
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }
  Widget _footer(){
    List bottomItems = [
      "assets/images/home_icon.svg",
      "assets/images/search_icon.svg",
      "assets/images/grocery_icon.svg",
      "assets/images/order_icon.svg",
      "assets/images/account_icon.svg"
    ];
    List textItems = ["Home", "Search", "Grocery", "Orders", "Account"];
    return Container(
      width: double.infinity,
      height: 75,
      decoration: BoxDecoration(
        color: white,
        border: Border(
          top: BorderSide(
            width: 2,
            color: black.withOpacity(0.06),
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
          top: 10
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              textItems.length, (index){
                return InkWell(
                  onTap: (){
                    setState(() {
                      pageIndex = index;
                    });
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        bottomItems[index],
                        width: 22,
                        color: pageIndex == index ? black : Colors.grey,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        textItems[index],
                        style: TextStyle(
                          fontSize: 10,
                          color: pageIndex == index ? black:black.withOpacity(0.5)
                        ),
                      )
                    ],
                  ) ,
                );
          }),
        ),
      ),
    );
  }
}
