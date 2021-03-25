import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fri_web/foodDetail.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';

class LandingScreen extends StatefulWidget {
  LandingScreen({this.token});
  final String token;

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

Future<List<Photo>> fetchPhotos(http.Client client) async {
  final response = await client.get(Uri.parse(
      'https://frisome.com/analytics/test/index/4e24f28b28647d98c6440420f9da0d35/json'));

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parsePhotos, response.body);
}

// A function that converts a response body into a List<Photo>.
List<Photo> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

class Photo {
  final String restaurant_id;
  final String name;
  final String description;
  final price;
  final image;

  Photo(
      {this.restaurant_id,
      this.name,
      this.description,
      this.image,
      this.price});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
        restaurant_id: json['restaurant_id'] as String,
        name: json['name'] as String,
        description: json['description'] as String,
        image: json['menu_image'],
        price: json['menu_price']
        //thumbnailUrl: json['thumbnailUrl'] as String,
        );
  }
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                IconButton(
                    icon: Icon(Icons.menu, color: Colors.pinkAccent),
                    onPressed: () {}),
                Spacer(),
                Container(
                    height: 40,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            '  National Cafe',
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 13,
                                fontWeight: FontWeight.w800),
                          ),
                          Spacer(),
                          IconButton(
                              icon: Icon(
                                Icons.search,
                                color: Colors.pinkAccent,
                              ),
                              onPressed: () {})
                        ],
                      ),
                    )),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Today's Special",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder<List<Photo>>(
                future: fetchPhotos(http.Client()),
                builder: (context, snapshot) {
                  if (snapshot.hasError) print(snapshot.error);

                  return snapshot.hasData
                      ? FoodItem(
                          photos: snapshot.data,
                        )
                      : Center(child: CircularProgressIndicator());
                },
              ),
            ),
            // Spacer(),
            Container(
                height: 75,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.pinkAccent,
                        size: 35,
                      ),
                      onPressed: () {},
                    ),
                    Container(
                      height: 40,
                      width: 190,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Center(
                          child: Text(
                        'Place Order',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class FoodItem extends StatefulWidget {
  final List<Photo> photos;

  const FoodItem({this.photos});

  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.photos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print(widget.photos[index].name + ' clicked');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetails(
                      name: widget.photos[index].name,
                      desc: widget.photos[index].description,
                      img: widget.photos[index].image[0],
                      // getImage: image,
                    ),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    Image.network(
                      widget.photos[index].image[0],
                      height: 130,
                      width: 130,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.photos[index].name,
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Spacer(),
                              Text(
                                '3.5',
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.w900),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.pinkAccent,
                              ),
                              SizedBox(
                                width: 15,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'images/veg.png',
                                height: 40,
                                width: 40,
                              ),
                              Text(
                                "₹",
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 35,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _decrementCounter();
                                },
                                child: Container(
                                  width: 22,
                                  height: 22,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Align(
                                      child: Text(
                                    '-',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                _counter.toString(),
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _incrementCounter();
                                },
                                child: Container(
                                  width: 22,
                                  height: 22,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Align(
                                      child: Text(
                                    '+',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
