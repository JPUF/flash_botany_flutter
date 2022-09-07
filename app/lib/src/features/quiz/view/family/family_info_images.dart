import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class FamilyInfoImages extends StatelessWidget {
  const FamilyInfoImages({Key? key, required this.urls}) : super(key: key);

  final List<String> urls;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: urls.length,
      itemBuilder: (_, i) => ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: AspectRatio(
            aspectRatio: 3 / 2,
            child: CachedNetworkImage(
              imageUrl: urls[i],
              placeholder: (context, url) => Shimmer(
                child: Container(
                  color: colors.onInverseSurface,
                ),
              ),
            ),
          )),
    );
  }
}
