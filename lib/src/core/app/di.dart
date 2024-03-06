import 'package:admin_template_responsive/src/core/app/app_preference.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> initAppModule() async {
  final SharedPreferences preferences = await SharedPreferences.getInstance();

  const AndroidOptions androidOption = AndroidOptions(
    encryptedSharedPreferences: true,
  );

  var secureStorage = const FlutterSecureStorage(aOptions: androidOption);

  getIt.registerLazySingleton(() => AppPreference(secureStorage, preferences));
}
