import 'package:admin_template_responsive/src/core/app/app_preference.dart';
import 'package:admin_template_responsive/src/data/data_source/user_data_source.dart';
import 'package:admin_template_responsive/src/data/repository/user_repository.dart';
import 'package:admin_template_responsive/src/domain/usecase/user_use_case.dart';
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

  // register secure and local storage
  getIt.registerLazySingleton(() => AppPreference(secureStorage, preferences));

  // register datasource
  getIt.registerLazySingleton(() => UserDataSourceImpl());

  // register repository
  getIt.registerLazySingleton(() => UserRepositoryImpl(getIt()));

  // register use-case
  getIt.registerLazySingleton(() => UserUseCase(getIt()));
}
