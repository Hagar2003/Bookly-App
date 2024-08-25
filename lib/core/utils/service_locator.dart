import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUp() {
  GetIt.I.registerSingleton<ApiService>((ApiService(Dio())));

  GetIt.I.registerSingleton<HomeRepoImplementation>(
      HomeRepoImplementation(GetIt.I.get<ApiService>()));
}
