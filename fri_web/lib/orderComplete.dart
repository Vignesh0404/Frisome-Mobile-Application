import 'package:flutter/material.dart';

class OrderComplete extends StatefulWidget {
  OrderComplete({Key key}) : super(key: key);

  @override
  _OrderCompleteState createState() => _OrderCompleteState();
}

class _OrderCompleteState extends State<OrderComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30),
            child: Text(
              'Your Order is Complete !',
              style: TextStyle(
                  color: Colors.pinkAccent, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Please make the payment to confirm.'),
          ),
          Text(
            'Order Details',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade600,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order No:',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    Text(
                      "#300211",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Table No:',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    Text(
                      "2A",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'No. of Items:',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    Text(
                      "3",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery within:',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    Text(
                      "29:59",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Cost:',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    Text(
                      "₹14.04",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
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
                SizedBox(
                  height: 20,
                ),
              ],
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
              'Make Payment',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w400),
            )),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            '100% Safe and Secure Payments',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 55,
            width: 230,
            decoration: BoxDecoration(
              color: Colors.grey.shade500,
              borderRadius: BorderRadius.circular(9.0),
            ),
            child: Center(
                child: Text(
              'Edit Order',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w400),
            )),
          ),
          Spacer(),
          Image.asset(
            'images/logo.png',
            width: 120,
            height: 120,
          ),
          SizedBox(
            height: 15,
          ),
          Text('Thank You. Visit Again.'),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
