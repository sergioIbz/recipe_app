import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/injection.config.dart';

final locator = GetIt.instance;

@InjectableInit(  
  initializerName: 'init', 
  preferRelativeImports: true,  
  asExtension: true,  
) 
Future<void> configureDependencies() async =>await locator.init();
