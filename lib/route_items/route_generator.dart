import 'package:flutter/material.dart';
import 'package:usarak_information/fitness/fitness_counter.dart';
import 'package:usarak_information/implement_later/random%20words.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyApp());

/////     /////     /////     /////     /////     /////      Keep bellow in alphabetic order to save time /////     /////     /////     /////     /////     /////
      /////      /////     /////     /////     /////     /////      Main Pages: Below This Line       /////     /////      /////     /////     /////     /////
/////    /////     /////     /////     /////     /////      /////       No Regular Pages                /////     /////      /////     /////     /////     /////

//      case '/CeremonialMusicGuide':
//      // Did not need validation for counter page / No arg to implement within
//        return MaterialPageRoute(builder: (_) => CeremonialMusicGuide());

//      case '/MyApp':
//        return MaterialPageRoute(builder: (_) => MyApp());
//;

      case '/FitnessCounter1':
        return MaterialPageRoute(builder: (_) => FitnessCounter());

//      case '/MainFitnessPage':
//      // Validation of correct data type
//        if (args is String) {
//          return MaterialPageRoute(
//            builder: (_) => MainFitnessPage(
//              data: args,
//            ),
//          );
//        }
//        return MaterialPageRoute(builder: (_) => MainFitnessPage());

//
//      case '/XylophoneApp':
//      // Did not need validation for counter page / No arg to implement within
//        return MaterialPageRoute(builder: (_) => XylophoneApp());

/////     /////     /////     /////     /////     /////      Keep above in alphabetic order to save time /////     /////     /////     /////     /////     /////

      // If args is not of the correct type, return an error page.
      // You can also throw an exception while in development.
      // If args is not of the correct type, return an error page.
      // You can also throw an exception while in development.

      //return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Under Construction Errors'),
        ),
        body: Center(
          child:
              Text('Now this is embarrissing. We are working on this issue!'),
        ),
      );
    });
  }
}

// this is what goes into the main page for starting route generator default code
//import 'package:usarak_information/route_items/route_generator.dart';
//
//void main() => runApp(LandingPage());
//
//@override
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
