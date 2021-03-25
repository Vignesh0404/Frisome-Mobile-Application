import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AllOrders extends StatefulWidget {
  AllOrders({Key key}) : super(key: key);

  @override
  _AllOrdersState createState() => _AllOrdersState();
}

class _AllOrdersState extends State<AllOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.pinkAccent,
                    ),
                    onPressed: () {}),
                Spacer(),
                Text(
                  'My Cart',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.pinkAccent,
                  size: 28,
                ),
                SizedBox(
                  width: 30,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'All Orders',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.pinkAccent),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.pinkAccent,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Date: 20/02/21',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.pinkAccent),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade500),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order No:',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                      Text(
                        "#300211",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Table No:',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                      Text(
                        "2A",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'No. of Items:',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                      Text(
                        "3",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery within:',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                      Text(
                        "29:59",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Cost:',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                      Text(
                        "₹14.04",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset(
                      'images/pasta.png',
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
                                'Cheese Pasta ',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Spacer(),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'x1',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                '₹14.04',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'images/veg.png',
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Text('Rate your purchase:'),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  RatingBar.builder(
                                    initialRating: 0,
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
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            Container(
              height: 55,
              width: 230,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(9.0),
              ),
              child: Center(
                  child: Text(
                'Repeat Order',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w400),
              )),
            ),
          ]),
        ));
  }
}
