import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text(
            "WallPapper-Picture",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  print("hi");
                },
                icon: Icon(Icons.menu))
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                width: double.infinity,
                child: CarouselSlider(
                  items: [
                    Image.asset("images/1.jpg"),
                    Image.asset("images/2.jpg"),
                    Image.asset("images/شاطي.jpg"),
                    Image.asset("images/2.jpg"),
                  ],
                  options: CarouselOptions(
                    height: 200,
                    pauseAutoPlayOnTouch: true,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    aspectRatio: 2.0,
                    initialPage: 2,
                  ),
                ),

              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              alignment: Alignment.centerLeft,
              child: Text(""
                  "WallPappers",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                  fontStyle: FontStyle.italic,
                ),),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    shape: (
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                        )
                    ),
                    elevation: 5,
                    child: Container(
                      height: 100,
                      width: 100,

                      child: Image.asset("images/ميسي.jpg"),
                    ),
                  ),
                  Card(
                    shape: (
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                        )
                    ),
                    elevation: 5,
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("images/طبيعة.jpg"),
                    ),
                  ),
                  Card(
                    shape: (
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                        )
                    ),
                    elevation: 5,
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("images/قطة.jpg"),
                    ),
                  ),
                  Card(
                    shape: (
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                        )
                    ),
                    elevation: 5,
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("images/سي.jpg"),
                    ),
                  ),
                  Card(
                    shape: (
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                        )
                    ),
                    elevation: 5,
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("images/تنزيل.jpg"),
                    ),
                  ),
                  Card(
                    shape: (
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                        )
                    ),
                    elevation: 5,
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("images/وردة.jpg"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              alignment: Alignment.centerLeft,
              child: Text(""
                  "Popular",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                  fontStyle: FontStyle.italic,
                ),),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              height: 400,
              child: Container(
                //padding: EdgeInsets.all(4),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/c.jpg",),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/c2.jpg",),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/c3.jpg",),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/c5.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/c5.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/c5.jpg"),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
