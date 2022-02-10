import 'package:flutter/material.dart';
import 'package:ice_cream_shop/core/constants.dart';
import 'package:ice_cream_shop/data/dummy_data.dart';
import 'package:ice_cream_shop/models/ice_cream.dart';
import 'package:ice_cream_shop/screens/item_detail_screen.dart';
import 'package:ice_cream_shop/widgets/section_title_widget.dart';

class HomePopularIceCreams extends StatelessWidget {
  const HomePopularIceCreams({Key? key}) : super(key: key);

  void onClickAddToCart() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .12,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const SectionTitle(title: "Popular Ice Cream"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 20),
                buildPopularIceCreamItem(
                  context,
                  size,
                  DummyData.data[0],
                ),
                buildPopularIceCreamItem(
                  context,
                  size,
                  DummyData.data[1],
                ),
                buildPopularIceCreamItem(
                  context,
                  size,
                  DummyData.data[2],
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildPopularIceCreamItem(
      BuildContext context, Size size, IceCream iceCream) {
    return Container(
      margin: EdgeInsets.only(right: size.width * .03),
      child: GestureDetector(
        onTap: () => Navigator.of(context)
            .pushNamed(ItemDetail.routeName, arguments: iceCream.id),
        child: Stack(
          children: [
            // item title
            Container(
              width: size.width * .33,
              height: size.height * .06,
              padding: EdgeInsets.only(
                left: size.width * .14,
                right: size.width * .02,
              ),
              decoration: BoxDecoration(
                color: iceCream.color.withAlpha(75),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      iceCream.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                      softWrap: false,
                    ),
                  ),
                ],
              ),
            ),
            // item image
            Container(
              width: size.width * .12,
              height: size.height * .06,
              decoration: BoxDecoration(
                color: iceCream.color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(Icons.icecream),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
