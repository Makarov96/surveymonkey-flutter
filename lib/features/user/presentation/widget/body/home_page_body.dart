import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:uxapp/features/widgets/cards/custom_card_swiper.dart';

import '../../../data/datasource/appoitmentdata.dart';

import '../content/card_list.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Swiper(
          itemCount: listappoitmentdata.length,
          viewportFraction: 0.6,
          scale: 0.5,
          itemBuilder: (BuildContext context, int index) {
            final data = listappoitmentdata[index];
            return CustomCardSwiper(
              appoitmentCites: AppoitmentCites(
                  imageUrl: data.imageUrl,
                  title: data.title,
                  color: data.color,
                  description: data.description),
            );
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CardList(),
        )
      ],
    );
  }
}
