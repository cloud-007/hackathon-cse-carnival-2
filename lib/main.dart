import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/presentation/routes.dart';
import 'package:reachout/presentation/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'di_setup.dart' as di;

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Dependency Injection
  await SharedPreferences.getInstance();
  await di.setup();

  // Patch for SSL certificate issue in Android <7.1.1
  // ByteData data =
  //     await PlatformAssetBundle().load('assets/ca/lets-encrypt-r3.pem');
  // SecurityContext.defaultContext
  //     .setTrustedCertificatesBytes(data.buffer.asUint8List());

  // Set status bar color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
  ));

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reachout',
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.main,
      onGenerateRoute: Routes.generateRoutes,
      navigatorKey: rootNavigatorKey,
    );
  }
}
