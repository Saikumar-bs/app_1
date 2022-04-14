// ignore_for_file: prefer_const_constructors

import 'package:app_1/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forwards',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
        scaffoldBackgroundColor: Color(0XFFF06C04),
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.4,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.dstATop),
                image: AssetImage(
                  "assets/images/wallpaper.png",
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Color(0XFFF06C04), shape: BoxShape.circle),
                      child: SvgPicture.asset('assets/icons/profile.svg'),
                    ),
                  ),
                  Text("Welcome to Forwards!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20.0,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "A knowledge board for the people and writing board on the internet.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      children: <Widget>[
                        card(),
                        card(),
                        card(),
                        card(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class card extends StatelessWidget {
  const card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Quotes",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Biology gives you a brain. Life turns it into a mind.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
