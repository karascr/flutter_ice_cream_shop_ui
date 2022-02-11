import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: size.height * .1,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          "Hey Emma",
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "What flavor do you like to eat?",
          style: TextStyle(height: 2, fontSize: 14),
        ),
        trailing: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.person,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
    );
  }
}
