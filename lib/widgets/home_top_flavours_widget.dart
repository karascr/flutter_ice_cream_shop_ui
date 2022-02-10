import 'package:flutter/material.dart';
import 'package:ice_cream_shop/core/constants.dart';
import 'package:ice_cream_shop/screens/item_detail_screen.dart';
import 'package:ice_cream_shop/widgets/section_title_widget.dart';

class HomeTopFlavours extends StatelessWidget {
  const HomeTopFlavours({Key? key}) : super(key: key);

  final String title = "Vanilla Ice Cream";
  final int amountGrams = 1000;
  final double rate = 4.9;
  final double price = 14.60;

  void onClickAddToCart() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .24,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      child: TopFlavoursItem(
          size: size,
          title: title,
          amountGrams: amountGrams,
          rate: rate,
          price: price),
    );
  }
}

class TopFlavoursItem extends StatelessWidget {
  const TopFlavoursItem({
    Key? key,
    required this.size,
    required this.title,
    required this.amountGrams,
    required this.rate,
    required this.price,
  }) : super(key: key);

  final Size size;
  final String title;
  final int amountGrams;
  final double rate;
  final double price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.of(context).pushNamed(ItemDetail.routeName, arguments: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: const SectionTitle(title: "Top Flavours"),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          Stack(
            children: [
              Container(
                height: size.height * .18,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 211, 228, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: buildRightContent(context),
              ),
              buildAddToCartButton(),
              buildItemImage(),
            ],
          )
        ],
      ),
    );
  }

  Positioned buildItemImage() {
    return Positioned(
      left: size.width * .05,
      top: size.height * .02,
      child: Icon(
        Icons.icecream,
        size: 120,
      ),
    );
  }

  Positioned buildAddToCartButton() {
    return Positioned(
      right: 30,
      bottom: 15,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Constants.themeSwatch,
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
          color: Colors.white,
          padding: EdgeInsets.zero,
          splashRadius: 1,
        ),
      ),
    );
  }

  Container buildRightContent(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: size.width * .37),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "${(amountGrams / 1000).toStringAsFixed(0)} KG",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Icon(
                Icons.star,
                size: 20,
                color: AppColors.yellow,
              ),
              Text(
                "${rate}",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.attach_money_outlined,
                color: Theme.of(context).primaryColor,
                size: 18,
              ),
              Text(
                "${price.toStringAsFixed(2)}",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
