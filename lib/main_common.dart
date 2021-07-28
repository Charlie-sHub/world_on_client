import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:provider/provider.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widgets/app_widget.dart';

Future<void> mainCommon(String environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  if (defaultTargetPlatform == TargetPlatform.android) {
    InAppPurchaseAndroidPlatformAddition.enablePendingPurchases();
  }
  configureDependencies(environment);
  await initializeLocalNotifications();
  await Firebase.initializeApp();
  runApp(
    Provider(
      create: (context) => environment,
      child: AppWidget(),
    ),
  );
}

Future<void> initializeLocalNotifications() async {
  const initializationSettingsAndroid = AndroidInitializationSettings("world_on_logo");
  const initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );
  await getIt<FlutterLocalNotificationsPlugin>().initialize(
    initializationSettings,
  );
}
