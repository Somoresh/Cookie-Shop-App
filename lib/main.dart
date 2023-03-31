import 'package:coockie_shop/bottom_bar.dart';
import 'package:coockie_shop/coockie_page.dart';
import 'package:coockie_shop/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
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
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Categories',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15.0,
          ),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xffc88d67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xffcdcdcd),
              tabs: [
                Tab(
                  child: Text(
                    'Cookies',
                    style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Cookie  Cake',
                    style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Cookie IceCream',
                    style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
                  ),
                ),
              ]),
          Container(
            height: MediaQuery.of(context).size.height - 80.0,
            width: double.infinity,
            child: TabBarView(controller: _tabController, children: [
              CoockiePage(),
              CoockiePage(),
              CoockiePage(),
              //CoockiePage(),
            ]),
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
