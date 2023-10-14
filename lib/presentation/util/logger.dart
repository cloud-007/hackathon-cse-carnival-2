import 'dart:io' show Platform;

import 'package:logger/logger.dart';

bool get colorSupport => Platform.isAndroid;

var logger = Logger(
  printer: PrettyPrinter(
    methodCount: 1,
    // number of method calls to be displayed
    errorMethodCount: 8,
    // number of method calls if stacktrace is provided
    lineLength: 100,
    // width of the output
    colors: colorSupport,
    // Colorful log messages
    printEmojis: true,
    // Print an emoji for each log message
    printTime: true, // Should each log print contain a timestamp
  ),
);
