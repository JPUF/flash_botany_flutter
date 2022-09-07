import 'package:freezed_annotation/freezed_annotation.dart';

import 'attributedUrl.dart';
import 'family.dart';

part 'species.freezed.dart';

@Freezed()
class Species with _$Species {
  const factory Species({
    required String latinName,
    required String commonName,
    required Family family,
    required List<AttributedUrl> images,
  }) = _Species;
}