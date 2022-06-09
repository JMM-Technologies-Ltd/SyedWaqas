import 'package:flutter/material.dart';
class FoodYouLovePage extends StatefulWidget {
  FoodYouLovePage({this.indicator, required this.controller});
  final indicator;
  PageController controller;

  @override
  _FoodYouLovePageState createState() => _FoodYouLovePageState();
}

class _FoodYouLovePageState extends State<FoodYouLovePage> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 30.0,right: 30.0),
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                height: 1,
                child: Image(
                  image: AssetImage('assets/images/1.jpg',),
                ),
              ),
            ),
          ),
          Expanded(child: Center(
            child: widget.indicator,
          ),
          ),
          Expanded(child: Align(
            alignment: Alignment.center,
            child: Text('Find Food You Love',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          ),
          Expanded(flex:2,child: Align(
            alignment: Alignment.center,
            child: Text('Discover the best food from over 1,000\n'
                'restaurants and fast delivery to your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),),
        ],
      ),
    );
  }
}
