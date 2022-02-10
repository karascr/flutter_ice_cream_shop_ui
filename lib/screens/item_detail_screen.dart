import 'package:flutter/material.dart';
import 'package:ice_cream_shop/core/constants.dart';
import 'package:ice_cream_shop/data/dummy_data.dart';
import 'package:ice_cream_shop/models/ice_cream.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({Key? key}) : super(key: key);
  static const String routeName = "/item-detail";

  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override
  int kilograms = 2;
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final IceCream iceCream = DummyData.data
        .where((element) =>
            element.id == ModalRoute.of(context)!.settings.arguments as int)
        .first;
    final Color color = iceCream.color.withOpacity(.5);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: color,
      ),
      body: Column(
        children: [
          // image
          Container(
            height: height * .4,
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: Icon(
              Icons.icecream,
              size: 200,
            ),
          ),
          // details
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(color: color),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${iceCream.title} Ice Cream",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      buildRateRow(iceCream),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildKilogramAdjuster(),
                          buildPriceTag(context, iceCream),
                        ],
                      ),
                      buildDescription(iceCream),
                      SizedBox(height: 20),
                      buildAddToCartButton()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Center buildAddToCartButton() {
    return Center(
      child: Container(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Add to Card"),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.red),
              ),
            ),
            elevation: MaterialStateProperty.all(10),
          ),
        ),
      ),
    );
  }

  Container buildDescription(IceCream iceCream) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Text(
        iceCream.description,
        style: TextStyle(
          fontSize: 16,
          height: 1.5,
        ),
      ),
    );
  }

  Row buildPriceTag(BuildContext context, IceCream iceCream) {
    return Row(
      children: [
        Icon(
          Icons.attach_money,
          color: Theme.of(context).primaryColor,
          size: 40,
        ),
        Text(
          "${iceCream.price.toStringAsFixed(2)}",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  Row buildKilogramAdjuster() {
    Color color = Theme.of(context).primaryColor;
    return Row(
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              if (kilograms > 0) {
                setState(() {
                  kilograms--;
                });
              }
            },
            icon: Icon(Icons.remove),
            color: Colors.white,
            padding: EdgeInsets.zero,
          ),
        ),
        SizedBox(width: 10),
        Text(
          "$kilograms Kg",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              setState(() {
                kilograms++;
              });
            },
            icon: Icon(Icons.add),
            color: Colors.white,
            padding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }

  Row buildRateRow(IceCream iceCream) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.grey,
          size: 20,
        ),
        SizedBox(width: 10),
        Text(
          "${iceCream.rate} (229 Reviews)",
          style: TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
