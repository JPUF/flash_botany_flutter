import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/blocs/prompt_bloc.dart';
import '../../../../shared/extensions.dart';

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

    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Swiper(
          itemCount: 3,
          itemBuilder: (context, index) {
            return BlocBuilder<PromptBloc, PromptState>(
              builder: (context, state) {
                final urls = state.promptSpecies?.imageUrls ?? [];
                if (urls.isNotEmpty) {
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
          control: SwiperControl(
              color: colors.onSurface, padding: const EdgeInsets.only(left: 8)),
          indicatorLayout: PageIndicatorLayout.SCALE,
        ),
        const AttributionContainer(),
      ],
    );
  }
}

class AttributionContainer extends StatefulWidget {
  const AttributionContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<AttributionContainer> createState() => _AttributionContainerState();
}

class _AttributionContainerState extends State<AttributionContainer> {

  bool showAttribution = false;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(width: 50),
          Visibility(
            visible: showAttribution,
            child: Expanded(
              child: attributionText(
                colors.onInverseSurface,
                context.attributionLabel,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() => showAttribution = !showAttribution);
            },
            child: Container(
              width: 50,
              height: 50,
              alignment: AlignmentDirectional.bottomEnd,
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.info_outline,
                size: 20,
                color: colors.surfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget attributionText(Color bgColor, TextStyle? fgStyle) {
    return Card(
      elevation: 4,
      color: bgColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Credit: Rob Routledge, Sault College, Bugwood.org', style: fgStyle),
      ),
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
