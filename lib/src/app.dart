import 'package:event_app/const_values.dart';
import 'package:event_app/screens/tab_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Event App",
      theme: ThemeData(
          primaryColor: mainColor,
          accentColor: subColor,
          appBarTheme: AppBarTheme(
            elevation: 0.0,
            color: mainColor,
            brightness: Brightness.dark,
            textTheme: TextTheme(
              headline6: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          )),
      home: TabScreen(),
    );
  }
}
