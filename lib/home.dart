import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

class Home extends KFDrawerContent {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  child: Material(
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: widget.onMenuPressed),
                  ),
                )
              ],
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/delivery1.png",
                  width: 283,
                  height: 250,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "In Coming",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Poppins",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please sit tight and our delivery\nteam will come nearly soon",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      color: Color(0xff8788A6)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 69,
                ),
                GestureDetector(
                  child: Container(
                    width: 300,
                    height: 50,
                    child: Material(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffFF7750),
                        child: Center(
                          child: Text(
                            "Order More Foods",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  ),
                  onTap: () {
                    print("Order More Foods Tapped");
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    "Track Delivery",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                        color: Color(0xff8788A6)),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
