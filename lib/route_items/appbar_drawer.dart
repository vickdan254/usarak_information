//import 'package:flutter/material.dart';
//import 'package:usarak_information/route_items/route_generator.dart';
//import 'package:usarak_information/route_items/homepage.dart';
//import 'package:usarak_information/route_items/appbar_drawer.dart';
//
///// route navigator only needs to be build once (in the main back then); then its pushed to other pages after through the generator from there.
//Widget build(BuildContext context) {
//  return MaterialApp(
//    title: 'Flutter Demo',
//    theme: ThemeData(
//      primaryColor: Color(0xFF3EBACE),
//      accentColor: Color(0xFFD8ECF1),
//      scaffoldBackgroundColor: Color(0xFFF3F5F7),
//    ),
//    initialRoute: '/',
//    onGenerateRoute: RouteGenerator.generateRoute,
//  );
//}
//
//void main() => runApp(HomePage());
//
//class HomePage extends StatefulWidget {
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//
//class _HomePageState extends State<HomePage> {
//  String mainProfilePicture =
//      'https://avatarfiles.alphacoders.com/715/71560.jpg';
//  String otherProfilePictureGreely = 'https://i.imgur.com/bPi6ZzM.png';
//  String otherProfilePictureRichardson =
//      'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto/gigs/125296371/original/653cc81872119844644e33d40f5afd9bd61743b6/create-cool-cartoon-avatars.jpg';
//  String otherProfilePictureWainwright =
//      'https://cdn4.iconfinder.com/data/icons/people-of-crime-and-protection/512/People_Crime_Protection_cool_macho_woman-512.png';
//
//// Switching between counts on here for the images
//  void switchUser() {
//    String backupString = mainProfilePicture;
//    this.setState(() {
//      mainProfilePicture = otherProfilePictureGreely;
//      otherProfilePictureGreely = backupString;
//    });
//  }
//
//  void switchUser1() {
//    String backupString = mainProfilePicture;
//    this.setState(() {
//      mainProfilePicture = otherProfilePictureGreely;
//      otherProfilePictureGreely = backupString;
//    });
//  }
//
//  void switchUser2() {
//    String backupString = mainProfilePicture;
//    this.setState(() {
//      mainProfilePicture = otherProfilePictureRichardson;
//      otherProfilePictureRichardson = backupString;
//    });
//  }
//
//  void switchUser3() {
//    String backupString = mainProfilePicture;
//    this.setState(() {
//      mainProfilePicture = otherProfilePictureWainwright;
//      otherProfilePictureWainwright = backupString;
//    });
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      // App Title here shows when screen in background or minimized or stacked on phone displays
//      title: 'USARAK Information APP',
//      debugShowCheckedModeBanner: false,
//
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('USARAK Information'),
//        ),
//        drawer: Drawer(
//          child: ListView(
//            children: <Widget>[
//              UserAccountsDrawerHeader(
//                //// user name and email for accounts
//                accountName: Text('UserName Here'),
//                accountEmail: Text('UserEmailExample@123.com'),
//
//                /// accounts to switch from one another here
//                currentAccountPicture: GestureDetector(
//                  onTap: () => switchUser(),
//                  child: CircleAvatar(
//                    //// user avatar
//                    backgroundImage: NetworkImage(mainProfilePicture),
//                  ),
//                ),
//
//                decoration: BoxDecoration(
//                  image: DecorationImage(
//                    fit: BoxFit.fill,
//                    image: NetworkImage(
//                      "https://cdn.hipwallpaper.com/i/27/5/l3twk9.jpg",
//                    ),
//                  ),
//                ),
//              ),
//
//              Container(
//                width: double.infinity,
//                child: Row(
//                  mainAxisSize: MainAxisSize.max,
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: <Widget>[
//                    /// this is the Fort Greely Post selection image here
//                    Container(
//                      child: Row(
//                        children: <Widget>[
//                          Column(
//                            children: <Widget>[
//                              GestureDetector(
//                                onTap: () => switchUser1(),
//                                child: CircleAvatar(
//                                  //// user avatar image
//                                  backgroundImage:
//                                  NetworkImage(otherProfilePictureGreely),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                    ),
//
//                    /// this is the Fort Richardson Post selection image here
//                    Column(
//                      children: <Widget>[
//                        GestureDetector(
//                          onTap: () => switchUser2(),
//                          child: CircleAvatar(
//                            //// user avatar
//                            backgroundImage:
//                            NetworkImage(otherProfilePictureRichardson),
//                          ),
//                        ),
//                      ],
//                    ),
//
//                    /// this is the Fort Wainwright Post selection image here
//                    Column(
//                      children: <Widget>[
//                        GestureDetector(
//                          onTap: () => switchUser3(),
//                          child: CircleAvatar(
//                            //// user avatar
//                            backgroundImage:
//                            NetworkImage(otherProfilePictureWainwright),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//              ),
//
//
//              Divider(
//                thickness: 10.0,
//                color: Colors.black,
//              ),
//
//              ////   Drawer Tabs following this line here underneath
//              ListTile(
//                title: Text('Messages'),
//                leading: Icon(Icons.question_answer, size: 32.0, color: Colors.blue.shade400),
//                trailing: Icon(Icons.menu),
//              ),
//
//              ListTile(
//                title: Text('Notes'),
//                leading: Icon(Icons.format_list_bulleted, size: 32.0, color: Colors.blue.shade400),
//                trailing: Icon(Icons.menu),
//              ),
//
//              ListTile(
//                title: Text('Tasks'),
//                leading: Icon(Icons.format_list_numbered, size: 32.0, color: Colors.blue.shade400),
//                trailing: Icon(Icons.menu),
//              ),
//
//              ListTile(
//                title: Text('Notifications'),
//                leading: Icon(Icons.notifications, size: 32.0, color: Colors.blue.shade400),
//                trailing: Icon(Icons.menu),
//              ),
//
//              Divider(
//                thickness: 10.0,
//                color: Colors.black,
//              ),
//
//              ListTile(
//                title: Text('My Profile'),
//                leading: Icon(Icons.account_circle, size: 32.0, color: Colors.blue.shade400),
//                trailing: Icon(Icons.menu),
//              ),
//
//              ListTile(
//                title: Text('Tools'),
//                leading: Icon(Icons.pan_tool, size: 32.0, color: Colors.blue.shade400),
//                trailing: Icon(Icons.menu),
//              ),
//
//              ListTile(
//                title: Text('QR Reader'),
//                leading: Icon(Icons.filter_center_focus, size: 32.0, color: Colors.blue.shade400),
//                trailing: Icon(Icons.menu),
//              ),
//
//              ListTile(
//                title: Text('Food'),
//                leading: Icon(Icons.local_dining, size: 32.0, color: Colors.blue.shade400),
//                trailing: Icon(Icons.menu),
//              ),
//
//              ListTile(
//                title: Text('Deals'),
//                leading: Icon(Icons.attach_money, size: 32.0, color: Colors.blue.shade400),
//                trailing: Icon(Icons.menu),
//              ),
//              ListTile(
//                title: Text('Leisure'),
//                leading: Icon(Icons.local_activity, size: 32.0, color: Colors.blue.shade400),
//                trailing: Icon(Icons.menu),
//              ),
//
//              ListTile(
//                title: Text('News'),
//                leading: Icon(Icons.rss_feed, size: 32.0, color: Colors.blue.shade400),
//                trailing: Icon(Icons.menu),
//              ),
//
//              ListTile(
//                title: Text('Store'),
//                leading: Icon(Icons.store, size: 32.0, color: Colors.blue.shade400),
//                trailing: Icon(Icons.menu),
//              ),
//
//              ListTile(
//                title: Text('Setting'),
//                leading: Icon(Icons.settings_applications, size: 32.0, color: Colors.blue.shade400),
//                trailing: Icon(Icons.menu),
//              ),
//              Divider(
//                thickness: 10.0,
//                color: Colors.black,
//              ),
//
//              ListTile(
//                title: Text('Emergency System / Notifications'),
//                leading: Icon(Icons.report_problem, size: 32.0, color: Colors.red),
//              ),
//
//              Divider(
//                thickness: 10.0,
//                color: Colors.black,
//              ),
//
//
//              ListTile(
//                title: Text('Close Page'),
//                trailing: Icon(Icons.cancel, size: 35.0, color: Colors.grey.shade400),
//              ),
//            ],
//          ),
//        ),
//
//        // only a body with a CustomScrollView.
//        body: Stack(
//          children: <Widget>[
///////     /////     /////     /////     /////     Top Landing Grey Box below here      /////     /////     /////     /////     /////     /////     /////     /////     /////     /////     /////
//            SizedBox(
//              height: 200.0,
//              width: double.infinity,
//              child: Container(
//                // Center image in Grey Box
//                color: Colors.grey.shade800,
//                child: Center(
//                  child: SizedBox(
//                    height: 100.0,
//                    width: 100.0,
//                    child: Container(
//                      child: FlutterLogo(),
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            Positioned(
//              // Top Left Greeting
//              top: 0.0,
//              left: 0.0,
//              child: Container(
//                padding: EdgeInsets.all(6.0),
//                child: RichText(
//                  text: TextSpan(
//                    text: 'Good Morning + UserName',
//                    style: TextStyle(
//                      fontSize: 15.0,
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            Positioned(
//              // Top Right: Top 1 of 2
//              top: 0.0,
//              right: 0.0,
//              child: Container(
//                padding: EdgeInsets.all(6.0),
//                child: RichText(
//                  text: TextSpan(
//                    text: '78°',
//                    style: TextStyle(
//                      fontSize: 15.0,
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            Positioned(
//              // Top Right: Top 2 of 2
//              top: 32.0,
//              right: 0.0,
//              child: Container(
//                padding: EdgeInsets.all(6.0),
//                child: RichText(
//                  text: TextSpan(
//                    text: 'Forcast',
//                    style: TextStyle(
//                      fontSize: 15.0,
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            Positioned(
//              // Bottom Left: Top 1 of 2
//              bottom: 33.0,
//              left: 0.0,
//              child: Container(
//                padding: EdgeInsets.all(6.0),
//                child: RichText(
//                  text: TextSpan(
//                    text: 'Next Event Time',
//                    style: TextStyle(
//                      fontSize: 15.0,
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            Positioned(
//              // Bottom Left: Bottom 2 of 2
//              bottom: 0.0,
//              left: 0.0,
//              child: Container(
//                padding: EdgeInsets.all(6.0),
//                child: RichText(
//                  text: TextSpan(
//                    text: 'Messages',
//                    style: TextStyle(
//                      fontSize: 15.0,
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            Positioned(
//              // Bottom Right: Top 1 of 2
//              bottom: 33.0,
//              right: 0.0,
//              child: Container(
//                padding: EdgeInsets.all(6.0),
//                child: RichText(
//                  text: TextSpan(
//                    text: 'Road Conditions',
//                    style: TextStyle(
//                      fontSize: 15.0,
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            Positioned(
//              // Bottom Right: Bottom 2 of 2
//              bottom: 0.0,
//              right: 0.0,
//              child: Container(
//                padding: EdgeInsets.all(6.0),
//                child: RichText(
//                  text: TextSpan(
//                    text: 'Air Quality',
//                    style: TextStyle(
//                      fontSize: 15.0,
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//          ],
//
//          /////     /////     /////     /////     /////     Top Landing Grey Box above here     /////     /////     /////     /////     /////     /////     /////     /////     /////     /////
//        ),
//
//      ),
//    );
//  }
//}
//
//
//
