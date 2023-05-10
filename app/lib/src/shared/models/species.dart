import 'package:freezed_annotation/freezed_annotation.dart';

import 'attributed_url.dart';
import 'family.dart';

part 'species.freezed.dart';
part 'species.g.dart';

@Freezed()
class Species with _$Species {
  const factory Species({
    required String latinName,
    required String commonName,
    required List<AttributedUrl> images,
  }) = _Species;

  factory Species.fromJson(Map<String, Object?> json) =>
      _$SpeciesFromJson(json);
}

extension SpeciesFamily on Species {
  Family get family =>
      Family.values.where((family) => family.speciesList.contains(this)).first;
}
