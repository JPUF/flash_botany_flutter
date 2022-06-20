import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flash_botany/src/shared/blocs/prompt_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PromptContent extends StatefulWidget {
  const PromptContent({
    Key? key,
  }) : super(key: key);

  @override
  State<PromptContent> createState() => _PromptContentState();
}

class _PromptContentState extends State<PromptContent> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PromptBloc>(context).add(const PromptEvent.nextPrompt());
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Swiper(
      itemCount: 3,
      itemBuilder: (context, index) {
        return BlocBuilder<PromptBloc, PromptState>(
          builder: (context, state) {
            final urls = state.promptSpecies?.imageUrls ?? [];
            if(urls.isNotEmpty) {
              return PromptNetworkImage(imgUrls: urls, index: index);
            } else {
              return const SizedLoadSpinner();
            }
          },
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

class PromptNetworkImage extends StatelessWidget {
  const PromptNetworkImage({
    Key? key,
    required this.imgUrls,
    required this.index,
  }) : super(key: key);

  final List<String> imgUrls;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrls[index],
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.contain),
        ),
      ),
      placeholder: (context, url) => const SizedLoadSpinner(),
      errorWidget: (context, url, dynamic error) => const Icon(Icons.error),
    );
  }
}

class SizedLoadSpinner extends StatelessWidget {
  const SizedLoadSpinner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 32,
        width: 32,
        child: const CircularProgressIndicator());
  }
}
