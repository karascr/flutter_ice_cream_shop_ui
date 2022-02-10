import 'package:flutter/material.dart';

class HomeSearchBar extends StatefulWidget {
  HomeSearchBar({Key? key}) : super(key: key);

  @override
  State<HomeSearchBar> createState() => HomeSearchBarState();
}

class HomeSearchBarState extends State<HomeSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [buildTexField(), buildFilterButton(context)],
      ),
    );
  }

  Positioned buildFilterButton(BuildContext context) {
    return Positioned(
      right: 0,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 40,
          padding: const EdgeInsets.all(5),
          width: 90,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.filter_alt,
                color: Colors.white,
                size: 20,
              ),
              Text(
                "Filter",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildTexField() {
    return Container(
      height: 55,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            border: InputBorder.none,
            hintText: "Search",
          ),
        ),
      ),
    );
  }
}
