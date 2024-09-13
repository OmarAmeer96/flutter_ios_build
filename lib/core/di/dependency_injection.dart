// import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

/// TODO: If there was an error, so make it here await an make the [DioFactory] Future.

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // // Dio & ApiService
  // Dio dio = DioFactory.getDio();
  // getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // // Login
  // getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // // Signup
  // getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  // getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
