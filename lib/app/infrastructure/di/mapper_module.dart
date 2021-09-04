import 'package:clean_arc_flutter/data/persistences/mappers/user_mapper.dart';
import 'package:injector/injector.dart';

class MapperModule {
  static void init(Injector injector) {
    injector.registerSingleton<UserMapper>(() => UserMapper());
  }
}
