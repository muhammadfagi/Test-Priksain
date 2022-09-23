import 'package:flutter/material.dart';
import 'package:tes_priksain/constant.dart';
import 'package:tes_priksain/screens/item_detail.dart';

class SuccessOrder extends StatelessWidget {
  const SuccessOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xE0F6EE47),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_outlined),
        //   color: Colors.white,
        //   onPressed: () => Navigator.pop(context),
        // ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DefaultPadding),
          child: Column(
            children: [
              Text(
                "Thank You",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(
                height: DefaultPadding,
              ),
              Container(
                // margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                    top: size.height * 0.05,
                    left: DefaultPadding,
                    right: DefaultPadding,
                    bottom: DefaultPadding * 2),
                // height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      // padding: EdgeInsets.all(8),
                      width: 43,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          color: Colors.white,
                          icon: Icon(Icons.done),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: DefaultPadding,
                    ),
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
                  ],
                ),
              ),
              SizedBox(
                height: DefaultPadding,
              ),
              Container(
                width: 508,
                height: 45,
                margin: EdgeInsets.only(top: 19.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.redAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
