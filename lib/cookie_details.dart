import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'bottom_bar.dart';

class CookieDetail extends StatelessWidget {
  final assetPath, cookieprice, cookiename;

  CookieDetail({this.assetPath, this.cookieprice, this.cookiename});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff545d68),
            )),
        title: Text(
          'Pickup',
          style: TextStyle(
              fontFamily: 'Varela', fontSize: 18, color: Color(0xff545d68)),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xff545d68),
              ))
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Cookie',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfff17532)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Hero(
              tag: assetPath,
              child: Image.asset(
                assetPath,
                height: 150.0,
                width: 100.0,
                fit: BoxFit.contain,
              )),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              cookieprice,
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfff17532)),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              cookiename,
              style: TextStyle(
                  color: Color(0xff575e67),
                  fontFamily: 'Varela',
                  fontSize: 24.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text(
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    color: Color(0xffb4b8b9)),
              ),
            ),
          ),
          SizedBox(
            height: 180.0,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Color(0xfff17532),
              ),
              child: Center(
                child: Text(
                  'Add To Cart',
                  style: TextStyle(
                      fontFamily: "Varela",
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xfff17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
