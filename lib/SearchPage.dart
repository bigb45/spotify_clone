import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(78, 153, 242, 200),
          Color.fromARGB(255, 7, 17, 14)
        ], begin: Alignment.topLeft, end: FractionalOffset(0.3, 0.3))),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                const Padding(padding: EdgeInsets.all(80)),
                const Text(
                  "Search",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontFamily: 'SportifyFont',
                      fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    color: Colors.white,
                    height: 50,
                    width: 380,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            FontAwesomeIcons.magnifyingGlass,
                            color: Colors.black54,
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Text(
                            "Artists, songs,  or podcasts",
                            style: TextStyle(
                                fontFamily: 'SportifyFont',
                                color: Colors.black54,
                                fontSize: 18),
                          )
                        ]),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your top genres",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'SportifyFont'),
                          ),
                          GridView.builder(
                            itemCount: 6,
                            gridDelegate:
                                new SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 2, crossAxisCount: 2),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            controller:
                                ScrollController(keepScrollOffset: false),
                            itemBuilder: ((BuildContext context, index) {
                              return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset(
                                  'assets/genre.png',
                                  fit: BoxFit.fill,
                                ),
                              );
                            }),
                          ),
                        ]),
                  ),
                )
              ]),
            )
          ],
        ));
  }
}
