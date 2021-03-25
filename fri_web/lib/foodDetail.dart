import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FoodDetails extends StatefulWidget {
  FoodDetails({Key key}) : super(key: key);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 235,
            width: double.infinity,
            decoration: new BoxDecoration(
                // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                image: new DecorationImage(
                    image: new ExactAssetImage('images/sand.jpg'),
                    fit: BoxFit.cover)),
            child: Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                      // color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {},
                  )),
                ),
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
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              //borderRadius: BorderRadius.circular(30),
              // boxShadow: <BoxShadow>[
              //   BoxShadow(color: Colors.black45, offset: Offset(0.0, 3))
              //]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Grill Sandwich',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                RatingBar.builder(
                  initialRating: 3.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.pinkAccent,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey.shade600,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 30, right: 30),
                  child: Center(
                    child: Text(
                        'A small description goes in this place to explain the item. Some more text can also be added.'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Select Size:'),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 27,
                                height: 27,
                                decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Align(
                                    child: Text(
                                  'S',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 27,
                                height: 27,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Align(
                                    child: Text(
                                  'M',
                                  style: TextStyle(
                                      color: Colors.grey.shade900,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 27,
                                height: 27,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Align(
                                    child: Text(
                                  'L',
                                  style: TextStyle(
                                      color: Colors.grey.shade900,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text('Quantity:'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade500,
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
                            SizedBox(
                              width: 6,
                            ),
                            Text('1'),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade500,
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
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('Select Spice level:'),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "₹",
                          style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 21,
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
                                  color: Colors.pinkAccent,
                                  fontSize: 45,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Add a Custom Comment:'),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Type Here',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 53,
                                height: 55,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Icon(Icons.favorite_border_outlined,
                                    size: 30, color: Colors.white),
                              ),
                              Container(
                                height: 60,
                                width: 210,
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Center(
                                    child: Text(
                                  'Add to cart',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )),
                              )
                            ],
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 44,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
