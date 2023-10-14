import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> saveLaunchUrl(
  String path, {
  bool launchInExternalApp = false,
}) async {
  try {
    final Uri url = Uri.parse(path);
    if (!await launchUrl(
      url,
      mode: launchInExternalApp
          ? LaunchMode.externalApplication
          : LaunchMode.inAppWebView,
    )) {
      throw Exception('Could not launch $url');
    }
  } catch (e) {
    debugPrint(e.toString());
  }
}
