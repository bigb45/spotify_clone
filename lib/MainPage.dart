import 'dart:async';

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(232, 189, 195, 199), Color(0x2c3e50)],
              begin: Alignment.topLeft,
              end: FractionalOffset(0.3, 0.3))),
      child: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: const EdgeInsets.all(30.0)),
                  Container(
                    height: 250,
                    child: Column(children: [
                      Text(
                        "Recenty Played",
                        style: TextStyle(
                            color: Colors.white.withOpacity(1),
                            fontSize: 19,
                            fontFamily: 'SportifyFont',
                            fontWeight: FontWeight.bold),
                      ),
                      const Padding(padding: EdgeInsets.all(10)),
                      Container(
                        height: 180,
                        child: ListView.builder(
                          itemCount: imageLinks.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((BuildContext context, index) {
                            return Column(
                              children: [
                                SizedBox(
                                  height: 130,
                                  width: 150,
                                  child: Image.asset(
                                    imageLinks[index],
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                Text(
                                  imageSubtext[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'SportifyFont'),
                                )
                              ],
                            );
                          }),
                        ),
                      ),
                    ]),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    height: 290,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Made for you",
                          style: TextStyle(
                              color: Colors.white.withOpacity(1),
                              fontSize: 23,
                              fontFamily: 'SportifyFont',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 210,
                          width: 210,
                          child: Image.asset(
                            imageLinks[0],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "The songs you loved most this year\nAll wrapped up.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white54,
                              fontSize: 12.5,
                              fontFamily: 'SportifyFont'),
                        ),
                      ],
                    ),
                  )
                ]),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Container(
            height: 250,
            child: Column(children: [
              Text(
                "Recommendations",
                style: TextStyle(
                    color: Colors.white.withOpacity(1),
                    fontSize: 19,
                    fontFamily: 'SportifyFont',
                    fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Container(
                height: 180,
                child: ListView.builder(
                  itemCount: imageLinks.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((BuildContext context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 130,
                          width: 150,
                          child: Image.asset(
                            imageLinks[index],
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          imageSubtext[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'SportifyFont'),
                        )
                      ],
                    );
                  }),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

List<String> imageLinks = [
  'assets/yourDailyMix1.jpeg',
  'assets/thisIsKailee.jpeg',
  'assets/thisIsBillie.jpeg',
  'assets/thisIsEminem.jpeg',
  'assets/thisIsAdele.jpeg',
];

List<String> imageSubtext = [
  'Today\'s top hits',
  'This is Kailee',
  'This is Billie Eilish',
  'This is Kendrick',
  'This is Adele'
];
