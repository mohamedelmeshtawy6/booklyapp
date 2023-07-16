import 'package:booklyapp/core/api_services.dart';
import 'package:booklyapp/features/home/data/repo/home_detail_repo.dart';
import 'package:booklyapp/features/home/data/repo/home_detail_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiServices>(ApiServices(dio: Dio()));

  getIt.registerSingleton<HomeDetailRepoImplementation>(
      HomeDetailRepoImplementation(apiServices: getIt.get<ApiServices>()));
}
