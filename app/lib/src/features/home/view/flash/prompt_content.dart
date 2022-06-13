import 'package:cached_network_image/cached_network_image.dart';
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
        return CachedNetworkImage(
          imageUrl: imgUrls[index],
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.contain),
            ),
          ),
          placeholder: (context, url) => Container(
              alignment: Alignment.center,
              height: 32,
              width: 32,
              child: const CircularProgressIndicator()),
          errorWidget: (context, url, dynamic error) => const Icon(Icons.error),
        );
      },
      pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: SwiperCustomPagination(builder: (c, config) {
            return const DotSwiperPaginationBuilder(
                    color: Colors.white, activeColor: Colors.white)
                .build(c, config);
          })),
      control: SwiperControl(color: colors.onSurface),
      indicatorLayout: PageIndicatorLayout.SCALE,
    );
  }
}
