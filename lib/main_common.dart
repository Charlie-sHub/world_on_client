import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:provider/provider.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widgets/app_widget.dart';

// TODO: Use flutter_dotenv for environments
// It's what Jose recommended, but i should ask for a more specific example
// as i'm not sure how best to use it, or even if i can get advantage of it right now
Future<void> mainCommon(String environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  if (defaultTargetPlatform == TargetPlatform.android) {
    InAppPurchaseAndroidPlatformAddition.enablePendingPurchases();
  }
  configureDependencies(environment);
  await Firebase.initializeApp();
  runApp(
    Provider(
      create: (context) => environment,
      child: AppWidget(),
    ),
  );
}
