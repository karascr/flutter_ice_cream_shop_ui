import 'package:flutter/material.dart';
import 'package:ice_cream_shop/core/constants.dart';
import 'package:ice_cream_shop/data/dummy_data.dart';
import 'package:ice_cream_shop/models/ice_cream.dart';
import 'package:ice_cream_shop/screens/item_detail_screen.dart';
import 'package:ice_cream_shop/widgets/section_title_widget.dart';

class HomeTopItem extends StatelessWidget {
  const HomeTopItem({Key? key}) : super(key: key);

  void onClickAddToCart() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .3,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Top Item"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildPopularIceCreamItem(context, size, DummyData.data[3]),
              buildPopularIceCreamItem(context, size, DummyData.data[4]),
            ],
          ),
        ],
      ),
    );
  }

  Container buildPopularIceCreamItem(
      BuildContext context, Size size, IceCream iceCream) {
    return Container(
      child: GestureDetector(
        onTap: () => Navigator.of(context)
            .pushNamed(ItemDetail.routeName, arguments: iceCream.id),
        child: Container(
          width: size.width * .42,
          height: size.height * .25,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: iceCream.color.withAlpha(75),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // item image
              Icon(
                Icons.icecream,
                size: 60,
              ),
              SizedBox(height: 10),
              // item title
              Row(
                children: [
                  Text(
                    iceCream.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                    softWrap: false,
                  ),
                ],
              ),
              // item description
              Row(
                children: [
                  Text(
                    iceCream.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    softWrap: false,
                  ),
                ],
              ),
              SizedBox(height: 10),
              // item price and add to cart button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  buildPriceTag(context),
                  buildAddToCartButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildPriceTag(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.attach_money_outlined,
          color: Theme.of(context).primaryColor,
          size: 16,
        ),
        Text(
          "${19.toStringAsFixed(2)}",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Container buildAddToCartButton() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Constants.themeSwatch,
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.add,
          size: 20,
        ),
        color: Colors.white,
        splashRadius: 1,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
