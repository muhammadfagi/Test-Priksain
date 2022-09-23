import 'package:flutter/material.dart';
import 'package:tes_priksain/constant.dart';
import 'package:tes_priksain/models/product.dart';
import 'package:tes_priksain/screens/item_detail.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> categories = [
    "Chicken",
    "Meat",
    "Cheese",
    "Mushroom",
    "Spicy"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          color: Color(0xFF578BB8),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Color(0xFF578BB8),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Color(0xFF578BB8),
            onPressed: () {},
          ),
          SizedBox(
            width: DefaultPadding / 2,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
            child: Text(
              "Pizza",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: DefaultPadding),
            child: SizedBox(
              height: 25,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildCategories(index),
                itemCount: categories.length,
              ),
            ),
          ),
          // ItemMotor(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
            child: GridView.builder(
              itemCount: product.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: DefaultPadding,
                  crossAxisSpacing: DefaultPadding),
              itemBuilder: (context, index) => ItemMotor(
                products: product[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ItemDetail(products: product[index]))),
              ),
            ),
          )),
        ],
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: DefaultPadding / 4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
              // child: ,
            )
          ],
        ),
      ),
    );
  }
}

class ItemMotor extends StatelessWidget {
  final Product products;
  final press;

  const ItemMotor({
    Key? key,
    required this.products,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(DefaultPadding),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: Color(0xE0F6EE47),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(products.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: DefaultPadding / 4),
            child: Text(
              products.title,
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ),
          Text(
            "Rp" + products.price,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
