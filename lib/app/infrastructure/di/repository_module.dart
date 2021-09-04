import 'package:clean_arc_flutter/app/infrastructure/endpoints.dart';
import 'package:clean_arc_flutter/app/infrastructure/persistences/api_service.dart';
import 'package:clean_arc_flutter/app/repositories/api/auth_api_repository.dart';
import 'package:clean_arc_flutter/app/repositories/api/user_api_repository.dart';
import 'package:clean_arc_flutter/data/persistences/mappers/user_mapper.dart';
import 'package:injector/injector.dart';


class RepositoryModule {

  static void init(Injector injector) {
    injector.registerDependency<UserApiRepository>( () {
      return UserApiRepository(
        injector.get<ApiService>(),
        injector.get<Endpoints>(),
        injector.get<UserMapper>()
      );
    });
    
    injector.registerDependency<AuthApiRepository>( () {
      return AuthApiRepository(
        injector.get<ApiService>(),
        injector.get<Endpoints>(),
        injector.get<UserMapper>()
      );
    });
  }
}