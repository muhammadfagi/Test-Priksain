import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tes_priksain/models/product.dart';
import 'package:tes_priksain/screens/review.dart';
import '../constant.dart';
// import 'home.dart';

class ItemDetail extends StatefulWidget {
  final Product products;

  const ItemDetail({Key? key, required this.products}) : super(key: key);

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  TextEditingController input = TextEditingController();
  // String input = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // var products;
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
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
          SizedBox(
            width: DefaultPadding / 2,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                        top: size.height * 0.12,
                        left: DefaultPadding,
                        right: DefaultPadding),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Spicy"),
                                  Row(
                                    children: [
                                      YesNo(
                                        color: Colors.red,
                                        isSelected: true,
                                      ),
                                      Text("No"),
                                      SizedBox(
                                        width: DefaultPadding,
                                      ),
                                      YesNo(
                                        color: Colors.red,
                                      ),
                                      Text("Yes"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                      TextSpan(text: "Stock\n"),
                                      TextSpan(
                                          text: "${widget.products.stock}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              ?.copyWith(
                                                  fontWeight: FontWeight.bold))
                                    ]),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: DefaultPadding,
                          ),
                          child: Text(widget.products.description,
                              style: TextStyle(height: 1.5)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Order Count :"),
                                SizedBox(
                                  height: DefaultPadding / 2,
                                ),
                                SizedBox(
                                  width: 100,
                                  height: 50,
                                  child: TextField(
                                    controller: input,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: false,
                                      hintText: "Count",
                                      hintStyle: TextStyle(fontSize: 12),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              // padding: EdgeInsets.all(8),
                              width: 43,
                              height: 43,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                                // borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.red,
                                ),
                              ),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  icon: Icon(Icons.favorite),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: DefaultPadding,
                        ),
                        Container(
                          width: 508,
                          height: 45,
                          margin: EdgeInsets.only(top: 11.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.redAccent),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                            ),
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            onPressed: () {
                              // var count;
                              if (input.text == "") {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text('Data Kosong'),
                                    content:
                                        const Text('Count Tidak Boleh Kosong!'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Ok'),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                        const Review()));
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: DefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ini adalah Motor",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          widget.products.title,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: DefaultPadding,
                        ),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(text: "Harga\n"),
                                  TextSpan(
                                      text: "Rp" + widget.products.price,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4
                                          ?.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            SizedBox(width: DefaultPadding),
                            Expanded(
                              child: Image.asset(
                                widget.products.image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class YesNo extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const YesNo({
    Key? key,
    required this.color,
    this.isSelected = false,
    /*default*/
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: DefaultPadding / 4, right: DefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isSelected ? color : Colors.transparent,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
