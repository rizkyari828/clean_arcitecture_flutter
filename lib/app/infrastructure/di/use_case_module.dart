import 'package:clean_arc_flutter/app/repositories/api/auth_api_repository.dart';
import 'package:clean_arc_flutter/app/repositories/api/user_api_repository.dart';
import 'package:clean_arc_flutter/use_cases/auth/login.dart';
import 'package:clean_arc_flutter/use_cases/user/get_user.dart';
import 'package:injector/injector.dart';

// Commonly here to declare dependency injection
class UseCaseModule {
  static void init(Injector injector) {
    // Use case
    injector.registerDependency<GetUserUseCase>(( ) {
      return GetUserUseCase(injector.get<UserApiRepository>());
    });

    injector.registerDependency<LoginUseCase>(() {
      return LoginUseCase(injector.get<AuthApiRepository>());
    });
  }
}
