import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.transparent,
        elevation: 9.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
              color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width / 2 - 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: Color(0xffef7532),
                    ),
                    Icon(
                      Icons.person_outline,
                      color: Color(0xff676e79),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width / 2 - 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Color(0xffef7532),
                    ),
                    Icon(
                      Icons.shopping_basket,
                      color: Color(0xff676e79),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
