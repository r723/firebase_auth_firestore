// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_application_1/service/third_party_services_module.dart'
    as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stacked_services/stacked_services.dart' as _i3;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyServicesModule = _$ThirdPartyServicesModule();
    gh.lazySingleton<_i3.DialogService>(
        () => thirdPartyServicesModule.dialogService);
    gh.lazySingleton<_i3.NavigationService>(
        () => thirdPartyServicesModule.navigationService);
    gh.lazySingleton<_i3.SnackbarService>(
        () => thirdPartyServicesModule.snackbarService);
    return this;
  }
}

class _$ThirdPartyServicesModule extends _i4.ThirdPartyServicesModule {
  @override
  _i3.NavigationService get navigationService => _i3.NavigationService();
  @override
  _i3.DialogService get dialogService => _i3.DialogService();
  @override
  _i3.SnackbarService get snackbarService => _i3.SnackbarService();
}
