// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cloud_functions/cloud_functions.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/pages/app_page.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (kDebugMode) {
    // adb reverse tcp:5001 tcp:5001
    // adb reverse tcp:9099 tcp:9099
    // adb reverse tcp:8080 tcp:8080
    // FirebaseFunctions.instance.useFunctionsEmulator('0.0.0.0', 5001);
    // FirebaseAuth.instance.useAuthEmulator('0.0.0.0', 9099);
    // FirebaseFirestore.instance.useFirestoreEmulator('0.0.0.0', 8080);
  }

  await configureDependencies();
  runApp(const ProviderScope(child: AppPage()));
}
