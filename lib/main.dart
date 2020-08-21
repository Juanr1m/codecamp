import 'package:flutter/material.dart';
import 'package:freecodecamp/models/location.dart';
import 'package:freecodecamp/screens/home/location_detail.dart';
import 'package:freecodecamp/screens/locations/locations.dart';
import 'package:freecodecamp/style.dart';

const LocationRoute = '/';
const LocationDetailRoute = '/location_detail';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(
              headline2: AppbarTextStyle,
              headline5: TitleTextStyle,
              bodyText1: BodyTextStyle,
            ),
          )),
      home: Locations(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
