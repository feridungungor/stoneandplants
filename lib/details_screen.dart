import 'package:flutter/material.dart';
import 'package:flutter_plantlast/constants.dart';
import 'package:flutter_plantlast/image_and_icons.dart';
import 'package:flutter_plantlast/title_and_price.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final String country;
  final String image;
  final int price;
  DetailsScreen({this.title, this.country, this.price, this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageAndIcons(size: size,image: image,),
            TitleAndPrice(price: price, title: title, country: country),
            SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    color: kPrimaryColor,
                    onPressed: () {},
                    child: Text(
                      "Nedir ?",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text("Ne Değildir ?"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
