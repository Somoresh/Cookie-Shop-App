import 'package:coockie_shop/cookie_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CoockiePage extends StatelessWidget {
  const CoockiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfaf8),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard('Cookie Mint', '\$3.99', 'assets/cookie1.png', false,
                    false, context),
                _buildCard('Cookie IceCream', '\$2.99', 'assets/cookie2.png',
                    false, false, context),
                _buildCard('Cookie Classic', '\$4.99', 'assets/cookie3.png',
                    false, false, context),
                _buildCard('Cookie Choco', '\$1.99', 'assets/cookie4.png',
                    false, false, context),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFacourite, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CookieDetail(
                    assetPath: imgPath,
                    cookieprice: price,
                    cookiename: name,
                  )));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isFacourite
                        ? Icon(
                            Icons.favorite,
                            color: Color(0xffef7532),
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Color(0xffef7532),
                          )
                  ],
                ),
              ),
              Hero(
                  tag: imgPath,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.contain)),
                  )),
              SizedBox(
                height: 7.0,
              ),
              Text(
                price,
                style: TextStyle(
                    color: Color(0xffcc8053),
                    fontFamily: 'Varela',
                    fontSize: 20.0),
              ),
              Text(
                name,
                style: TextStyle(
                    color: Color(0xff575e67),
                    fontFamily: 'Varela',
                    fontSize: 20.0),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Color(0xffebebeb),
                  height: 1.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!added) ...[
                      Icon(
                        Icons.shopping_basket,
                        color: Color(0xffd17e50),
                        size: 15.0,
                      ),
                      Text(
                        'Add to Cart',
                        style: TextStyle(
                            fontFamily: 'Varela',
                            color: Color(0xffd17e50),
                            fontSize: 15.0),
                      )
                    ],
                    if (!added) ...[
                      Icon(
                        Icons.remove_circle_outline,
                        color: Color(0xffd17e50),
                        size: 15.0,
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                            fontFamily: 'Varela',
                            color: Color(0xffd17e50),
                            fontSize: 15.0),
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        color: Color(0xffd17e50),
                        size: 15.0,
                      )
                    ],
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
