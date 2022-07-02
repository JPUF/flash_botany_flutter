
import 'package:url_launcher/url_launcher.dart';

Future<void> launchExternalUrl(String url) async {
  final uri = Uri.parse(url);
  if (!await launchUrl(uri)) throw 'Could not launch $uri';
}