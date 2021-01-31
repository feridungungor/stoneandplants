import 'package:animations/animations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plantlast/constants.dart';
import 'package:flutter_plantlast/data_model.dart';
import 'package:flutter_plantlast/details_screen.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  List<Widget> taslar(BuildContext context) {
    List<Widget> RecomendStone = new List<Widget>();
    for (int i = 0; i < myStone.length; i++) {
      RecomendStone.add(
        OpenContainer(
          closedElevation: 0,
            openElevation: 0,
            openColor: Colors.transparent,
            closedColor: Colors.transparent,
            closedBuilder: (context,action){
              return  RecomendPlantCard(
                image: myStone[i].image,
                title: myStone[i].tr_title,
                country: myStone[i].en_title,
                price: 44,
                action: action,
              );
            },
            openBuilder: (context,action){
              return DetailsScreen(
                image: myStone[i].imagex2,
                title: myStone[i].tr_title,
                country: myStone[i].en_title,
                price: 440,
              );
            }
        )
      );
    }
    return RecomendStone;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: taslar(context)),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.action,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function action;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            child: Image.asset(image),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  '\$$price',
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: kPrimaryColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
