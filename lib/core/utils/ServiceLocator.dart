import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/homeRepoImplement.dart';
import 'apiService.dart';


final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomRepoImplement>(HomRepoImplement(
    getIt.get<ApiService>(),
  ));
}