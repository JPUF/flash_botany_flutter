import 'package:freezed_annotation/freezed_annotation.dart';

// @Freezed()
// class AttributedUrl with $AttributedUrl {
//   final String url;
//   final String? attribution;
//
//   const AttributedUrl(this.url, [this.attribution]);
// }

part 'attributed_url.freezed.dart';
part 'attributed_url.g.dart';

@Freezed()
class AttributedUrl with _$AttributedUrl {
  const factory AttributedUrl({
    required String url,
    required String? attribution,
  }) = _AttributedUrl;

  factory AttributedUrl.fromJson(Map<String, Object?> json) =>
      _$AttributedUrlFromJson(json);
}

// @Freezed()
// class Species with _$Species {
//   const factory Species({
//     required String latinName,
//     required String commonName,
//     required Family family,
//     required List<AttributedUrl> images,
//   }) = _Species;
//
//   factory Species.fromJson(Map<String, Object?> json) => _$SpeciesFromJson(json);
// }
