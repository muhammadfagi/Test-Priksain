import 'package:flutter/material.dart';
import 'package:tes_priksain/models/product.dart';
import 'package:tes_priksain/screens/success.dart';

import '../constant.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xE0F6EE47),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images/pizza1.png",
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(
              height: DefaultPadding * 3,
            ),
            Container(
              // margin: EdgeInsets.only(top: size.height * 0.3),
              padding: EdgeInsets.only(
                  top: size.height * 0.05,
                  left: DefaultPadding,
                  right: DefaultPadding,
                  bottom: DefaultPadding),
              // height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Name",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Pizza 1",
                        style: TextStyle(fontSize: 19),
                      ),
                    ],
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 500,
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black.withOpacity(0.1),
                            width: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Spicy",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "No",
                        style: TextStyle(fontSize: 19),
                      ),
                    ],
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 500,
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black.withOpacity(0.1),
                            width: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Count",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "2",
                        style: TextStyle(fontSize: 19),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: DefaultPadding * 5),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 500,
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black.withOpacity(0.1),
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Price",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Rp.60k",
                        style: TextStyle(fontSize: 19),
                      ),
                    ],
                  ),
                  Container(
                    width: 508,
                    height: 45,
                    margin: EdgeInsets.only(top: 19.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.redAccent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      child: Text(
                        "Buy",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const SuccessOrder()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
