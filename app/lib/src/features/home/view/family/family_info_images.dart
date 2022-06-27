import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FamilyInfoImages extends StatelessWidget {
  const FamilyInfoImages({Key? key, required this.urls}) : super(key: key);

  final List<String> urls;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: urls.length,
      itemBuilder: (_, i) => ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: CachedNetworkImage(imageUrl: urls[i])),
    );
  }
}
