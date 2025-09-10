// core/utils/fuctions/set_up_services_locators.dart
import 'package:bookly_app/Features/Main/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/Features/Main/data/data_source/home_remote_data_source.dart';
import 'package:bookly_app/Features/Main/data/repos/home_repo_impl.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;
void setupServicesLocator(){
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
  HomeRepoImpl(
    homeLocalDataSource: HomeLocalDataSourceImpl(),
    homeRemoteDataSource: HomeRemoteDataSourceImpl(
      apiServices: getIt.get<ApiServices>(),
    ),
  ),
);}