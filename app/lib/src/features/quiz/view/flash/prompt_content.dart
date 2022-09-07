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
  int currentIndex = 0;
  bool showAttribution = false;

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
          onIndexChanged: (index) {
            setState(() {
              currentIndex = index;
              showAttribution = false;
            });
          },
          itemBuilder: (context, index) {
            return BlocBuilder<PromptBloc, PromptState>(
              builder: (context, state) {
                final attributedUrls = state.promptSpecies?.images ?? [];
                final urls = attributedUrls.map((a) => a.url).toList();
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
        BlocBuilder<PromptBloc, PromptState>(
          builder: (context, state) {
            final attributedUrls = state.promptSpecies?.images ?? [];
            final credits = attributedUrls.map((a) => a.attribution).toList();
            return AttributionContainer(
              attributions: credits,
              index: currentIndex,
              showAttribution: showAttribution,
              toggleVisibility: () {
                setState(() => showAttribution = !showAttribution);
              },
            );
          },
        ),
      ],
    );
  }
}

class AttributionContainer extends StatefulWidget {
  const AttributionContainer({
    Key? key,
    required this.attributions,
    required this.index,
    required this.showAttribution,
    required this.toggleVisibility,
  }) : super(key: key);

  final List<String?> attributions;
  final int index;
  final bool showAttribution;
  final VoidCallback toggleVisibility;

  @override
  State<AttributionContainer> createState() => _AttributionContainerState();
}

class _AttributionContainerState extends State<AttributionContainer> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final attribution = widget.attributions[widget.index];
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(width: 50),
          Visibility(
            visible: widget.showAttribution && attribution != null,
            child: Expanded(
              child: attributionText(
                attribution,
                colors.onInverseSurface,
                context.attributionLabel,
              ),
            ),
          ),
          Visibility(
            visible: attribution != null,
            child: GestureDetector(
              onTap: () => widget.toggleVisibility(),
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
          ),
        ],
      ),
    );
  }

  Widget attributionText(
      String? attribution, Color bgColor, TextStyle? fgStyle) {
    return Card(
      elevation: 4,
      color: bgColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Credit: $attribution',
          style: fgStyle,
        ),
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
