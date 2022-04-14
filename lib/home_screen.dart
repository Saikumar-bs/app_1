import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'card.dart';

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
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color(0XFFF06C04), shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        'assets/icons/profile.svg',
                      ),
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
                  SizedBox(
                    height: 55.0,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                      crossAxisSpacing: 6.0,
                      mainAxisSpacing: 6.0,
                      children: <Widget>[
                        card(
                          title: "Quotes",
                          matter:
                              "If you cannot do great things, do small things in a great way.",
                        ),
                        card(
                          title: "Facts",
                          matter:
                              "People develop first impressions of you in a tenth of a second.",
                        ),
                        card(
                          title: "Tips",
                          matter:
                              "Adding turmeric to your diet can increase your focus.",
                        ),
                        card(
                          title: "Scribbles",
                          matter:
                              "Don't forget how badly you once wanted what you have now.",
                        ),
                        card(
                          title: "Jokes",
                          matter:
                              "Conora virus will not end until you read the first word correctly.",
                        ),
                        card(
                          title: "Slokas",
                          matter:
                              "Asatoma sad gamaya, Tamaso ma jyotir gamaya, Mrityor ma amritam gamaya, Om shanti, shanti, shanti hi",
                        ),
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
