import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plantlast/constants.dart';
import 'package:flutter_plantlast/fuatures_plants.dart';
import 'package:flutter_plantlast/recomends_plants.dart';
import 'package:flutter_plantlast/title_with_more_btn.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Degerli Taşlar",
            press: () {},
          ),
          RecomendsPlants(),
          TitleWithMoreBtn(
            title: "Şifalı Bitkiler",
            press: () {},
          ),
          FuaturesPlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}
