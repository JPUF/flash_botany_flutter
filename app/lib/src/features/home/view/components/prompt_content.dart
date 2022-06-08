import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class PromptContent extends StatelessWidget {
  const PromptContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final imgUrls = [
      'http://www.davidalbeck.com/photos/2010/mansfield/i020.jpg',
      'http://www.davidalbeck.com/photos/2015/pond_april/i011.jpg',
      'http://www.davidalbeck.com/photos/2014/pond19sept/i008.jpg',
    ];
    return Swiper(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Image.network(
          imgUrls[index],
          fit: BoxFit.contain,
        );
      },
      pagination: SwiperCustomPagination(
        builder: (c, config) {
          return DotSwiperPaginationBuilder(
                  color: colors.onSurface, activeColor: colors.tertiary)
              .build(c, config);
        },
      ),
      control: SwiperControl(color: colors.onSurface),
    );
  }
}
