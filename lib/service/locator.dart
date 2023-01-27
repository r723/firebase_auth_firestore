import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'locator.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection() => getIt.init(); //$initGetIt(getIt);

GetIt locator = GetIt.instance;


void setupSnackbarUi() {
  
}
