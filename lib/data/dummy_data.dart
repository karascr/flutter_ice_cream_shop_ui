import 'package:ice_cream_shop/core/constants.dart';
import 'package:ice_cream_shop/models/ice_cream.dart';

class DummyData {
  static List<IceCream> get data => [
        IceCream(
          id: 1,
          title: "Vanilla",
          description:
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal",
          color: AppColors.pink,
          imgPath: "",
          amountGrams: 1000,
          rate: 4.9,
          price: 14.6,
        ),
        IceCream(
          id: 2,
          title: "Neopolitan",
          description: "",
          color: AppColors.yellow,
          imgPath: "",
          amountGrams: 1000,
          rate: 4.9,
          price: 14.6,
        ),
        IceCream(
          id: 3,
          title: "Coconut",
          description: "",
          color: AppColors.purple,
          imgPath: "",
          amountGrams: 1000,
          rate: 4.9,
          price: 14.6,
        ),
        IceCream(
          id: 4,
          title: "Sherbet Flavors",
          description: "With strawberry jam",
          color: AppColors.blue,
          imgPath: "",
          amountGrams: 1000,
          rate: 4.9,
          price: 14.6,
        ),
        IceCream(
          id: 5,
          title: "Sherbet Flavors",
          description: "With strawberry jam",
          color: AppColors.pink,
          imgPath: "",
          amountGrams: 1000,
          rate: 4.9,
          price: 14.6,
        ),
      ];
}
