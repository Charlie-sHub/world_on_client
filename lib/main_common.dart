import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widgets/app_widget.dart';

Future<void> mainCommon(String environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(environment);
  await initializeLocalNotifications();
  await Firebase.initializeApp();
  final markerIcon = await BitmapDescriptor.fromAssetImage(
    const ImageConfiguration(size: Size(12, 12)),
    "assets/logo/world_on_logo_marker.png",
  );
  runApp(
    MultiProvider(
      providers: [
        Provider<String>(
          create: (context) => environment,
        ),
        Provider<BitmapDescriptor>(
          create: (context) => markerIcon,
        ),
      ],
      child: AppWidget(),
    ),
  );
}

Future<void> initializeLocalNotifications() async {
  const androidSettings = AndroidInitializationSettings("world_on_logo");
  const iOSSettings = DarwinInitializationSettings(
    onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
  );
  const initializationSettings = InitializationSettings(
    android: androidSettings,
    iOS: iOSSettings,
  );
  await getIt<FlutterLocalNotificationsPlugin>().initialize(
    initializationSettings,
  );
}

void _onDidReceiveLocalNotification(
  int id,
  String? title,
  String? body,
  String? payload,
) {
  // TODO: Properly handle the notifications
}
