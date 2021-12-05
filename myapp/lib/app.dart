import 'package:flutter/material.dart';
import 'screens/locations/locations.dart';
import 'screens/location_detail/location_detail.dart';
import 'style.dart';

const locationsRoute = '/';
const locationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments as Map<String, dynamic>;
      Widget screen;
      switch (settings.name) {
        case locationsRoute:
          screen = Locations();
          break;
        case locationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(textTheme: TextTheme(subtitle1: AppBarTextStyle)),
        textTheme: TextTheme(
          subtitle1: TitleTextStyle,
          bodyText1: Body1TextStyle,
        ));
  }
}
