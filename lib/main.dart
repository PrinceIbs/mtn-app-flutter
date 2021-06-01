import 'dart:ffi';

import "package:flutter/material.dart";

void main() {
  runApp(HomeClass());
}

class HomeClass extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: 'mtn',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/bnav/recharge': (context) => BNavRecharge(),
        '/bnav/bundle': (context) => BNavBundle(),
        '/bnav/shop': (context) => BNavShop(),
        '/bnav/more': (context) => BNavMore(),
        '/sidenav': (context) => SideNav(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.black.withOpacity(.60),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, bottom: 20, right: 20, left: 15),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.person,
                          size: 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, bottom: 20, right: 20, left: 15),
                      child: Column(
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              letterSpacing: 2.3,
                            ),
                          ),
                          Text(
                            "USERNAME",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'monospace',
                              color: Colors.white,
                              letterSpacing: 2.5,
                            ),
                          ),
                          Text(
                            "09081927384",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1.0,
                  thickness: 1.0,
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title:
                      Text('Messages', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title:
                      Text('Settings', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title:
                      Text('Messages', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title:
                      Text('Settings', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title:
                      Text('Messages', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('SettingsNow',
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title:
                      Text('Messages', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: Text(
            "+23480987654",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Center(
                child: Icon(
                  Icons.mail_outline,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(4.0),
            //   child: Image.network(
            //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSACqU_2tEwu-x4J8P4O1uGvTV1GWOE_QkNpIAkMDyGiVRmkutgP4Heit_X3dP1XuNQm5s&usqp=CAU",
            //     height: 42,
            //     width: 43,
            //   ),
            // ),
            Container(
              height: 20,
              width: 30,
              padding: EdgeInsets.all(1.2),
              margin: EdgeInsets.only(
                top: 12,
                bottom: 12,
                right: 10,
                left: 10,
              ),
              color: Colors.white,
              child: Image(
                image: AssetImage('assets/images/mtn-icon.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white.withOpacity(.60),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              title: Text("Home", style: TextStyle(color: Colors.black)),
              icon: IconButton(
                icon: Icon(Icons.home, color: Colors.black),
                onPressed: () {
                  print("You tapped HOME");
                  Navigator.pushNamed(context, '/');
                },
              ),
              // label: 'Bottom',
            ),
            BottomNavigationBarItem(
              title: Text("Recharge", style: TextStyle(color: Colors.black)),
              icon: IconButton(
                icon: Icon(Icons.play_arrow, color: Colors.black),
                onPressed: () {
                  print("You tapped RECHARGE");
                  Navigator.pushNamed(context, '/bnav/recharge');
                },
              ),
            ),
            BottomNavigationBarItem(
              title: Text("Bundle", style: TextStyle(color: Colors.black)),
              icon: IconButton(
                icon: Icon(Icons.shopping_basket_sharp, color: Colors.black),
                onPressed: () {
                  print("You tapped BUNDLE");
                  Navigator.pushNamed(context, '/bnav/bundle');
                },
              ),
            ),
            BottomNavigationBarItem(
              title: Text("Shop", style: TextStyle(color: Colors.black)),
              icon: IconButton(
                icon:
                    Icon(Icons.play_circle_outline_sharp, color: Colors.black),
                onPressed: () {
                  print("You tapped SHOP");
                  Navigator.pushNamed(context, '/bnav/shop');
                },
              ),
            ),
            BottomNavigationBarItem(
              title: Text("More", style: TextStyle(color: Colors.black)),
              icon: IconButton(
                icon: Icon(Icons.apps_outlined, color: Colors.black),
                onPressed: () {
                  print("You tapped MORE");
                  Navigator.pushNamed(context, '/bnav/more');
                },
              ),
            ),
          ],
        ),
        body: Container(
          color: Colors.grey.shade50,
          child: ListView(
            children: [
              Container(
                color: Colors.grey,
                margin: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, bottom: 20, right: 20, left: 15),
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow[800],
                        child: Icon(
                          Icons.person,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text("Good Morning USERNAME"),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      color: Colors.greenAccent,
                      height: 65,
                      width: 360,
                    ),
                    Container(
                      color: Colors.redAccent,
                      height: 65,
                      width: 360,
                    ),
                    Container(
                      color: Colors.black,
                      height: 65,
                      width: 360,
                    ),
                    Container(
                      color: Colors.blueAccent,
                      height: 65,
                      width: 360,
                    ),
                    Container(
                      color: Colors.blueGrey,
                      height: 65,
                      width: 360,
                    ),
                    Container(
                      color: Colors.limeAccent,
                      height: 65,
                      width: 360,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Text("Get Welcome Back Data"),
                    Text(
                      "Click Here",
                      style: TextStyle(
                        color: Colors.yellow[800],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.grey,
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.shopping_bag,
                          color: Colors.yellow, size: 30),
                      padding: EdgeInsets.all(10),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Your NIN Status",
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            "NIN submitted - Verification Ongoing",
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right, size: 30),
                  ],
                ),
              ),
              Text("QUICK ACCESS"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7),
                      color: Colors.red,
                      width: 90,
                      height: 90,
                    ),
                    Container(
                      margin: EdgeInsets.all(7),
                      color: Colors.orange,
                      width: 90,
                      height: 90,
                    ),
                    Container(
                      margin: EdgeInsets.all(7),
                      color: Colors.yellow,
                      width: 90,
                      height: 90,
                    ),
                    Container(
                      margin: EdgeInsets.all(7),
                      color: Colors.green,
                      width: 90,
                      height: 90,
                    ),
                    Container(
                      margin: EdgeInsets.all(7),
                      color: Colors.blue,
                      width: 90,
                      height: 90,
                    ),
                    Container(
                      margin: EdgeInsets.all(7),
                      color: Colors.indigo,
                      width: 90,
                      height: 90,
                    ),
                    Container(
                      margin: EdgeInsets.all(7),
                      color: Colors.deepPurple,
                      width: 90,
                      height: 90,
                    ),
                  ],
                ),
              ),
              Text("My Plan"),
            ],
          ),
        ),
      ),
    );
  }
}

class BNavRecharge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Recharge"),
        ),
      ),
    );
  }
}

class BNavBundle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bundle"),
        ),
      ),
    );
  }
}

class BNavShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Shop"),
        ),
      ),
    );
  }
}

class BNavMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("More"),
        ),
      ),
    );
  }
}

class SideNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
      ),
    );
  }
}
