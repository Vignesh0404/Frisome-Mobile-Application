import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  MyCart({Key key}) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                                'Cheese Pasta',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Spacer(),
                              Icon(
                                Icons.close,
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
                                width: 5,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                width: 5,
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
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 47,
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  borderRadius: BorderRadius.circular(9.0),
                ),
                child: Center(
                    child: Text(
                  'Add more items',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w400),
                )),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Spice Level',
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                        color: Colors.pinkAccent),
                  ),
                  SizedBox(width: 15),
                  Container(
                    width: 28,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(3)),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Container(
                      height: 40,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text(
                              '  Coupon Code',
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800),
                            ),
                            Spacer(),
                            Container(
                              height: 25,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Center(
                                  child: Text(
                                'Apply',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            SizedBox(
                              width: 6,
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    width: 12,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        onPressed: null,
                        child: Container(
                          height: 40,
                          width: 85,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  width: 1, color: Colors.pinkAccent)),
                          child: Center(
                              child: Text(
                            '₹ 23.04',
                            style: TextStyle(
                                fontFamily: 'NunitoSans',
                                fontWeight: FontWeight.w400,
                                color: Colors.pinkAccent),
                          )),
                        ),
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
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text('* Orders cannot be cancelled once confirmed.')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
