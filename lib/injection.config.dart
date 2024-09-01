// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:firebase_messaging/firebase_messaging.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;

import 'core/api/api_consumer.dart' as _i13;
import 'core/api/dio_consumer.dart' as _i14;
import 'core/api/logging_interceptor.dart' as _i5;
import 'core/error/error_interceptor.dart' as _i6;
import 'core/network/network_info.dart' as _i11;
import 'core/third_party_injection.dart' as _i138;
import 'core/utils/cubit/notification_cubit.dart' as _i12;
import 'core/utils/shared_preference_utils.dart' as _i10;
import 'features/admin/data/repository/admin_repository.dart' as _i46;
import 'features/admin/data/web_services/admin_web_service.dart' as _i16;
import 'features/admin/presentation/controllers/add_branch_cubit.dart' as _i47;
import 'features/admin/presentation/controllers/add_branch_manager_cubit.dart'
    as _i48;
import 'features/admin/presentation/controllers/add_warehouse_cubit.dart'
    as _i49;
import 'features/admin/presentation/controllers/add_warehouse_manager_cubit.dart'
    as _i50;
import 'features/admin/presentation/controllers/delete_branch_cubit.dart'
    as _i51;
import 'features/admin/presentation/controllers/delete_warehouse_cubit.dart'
    as _i52;
import 'features/admin/presentation/controllers/get_all_active_trips_paginated_cubit.dart'
    as _i53;
import 'features/admin/presentation/controllers/get_all_archive_trips_paginated_cubit.dart'
    as _i54;
import 'features/admin/presentation/controllers/get_all_branches_cubit.dart'
    as _i55;
import 'features/admin/presentation/controllers/get_all_customer_paginated_cubit.dart'
    as _i56;
import 'features/admin/presentation/controllers/get_all_employee_paginated_cubit.dart'
    as _i57;
import 'features/admin/presentation/controllers/get_all_trucks_by_branch_id_pagination_cubit.dart'
    as _i58;
import 'features/admin/presentation/controllers/get_all_warehouses_paginated_cubit.dart'
    as _i59;
import 'features/admin/presentation/controllers/get_branch_employee_cubit.dart'
    as _i60;
import 'features/admin/presentation/controllers/get_customer_by_id_cubit.dart'
    as _i61;
import 'features/admin/presentation/controllers/get_drivers_by_branch_id_pagination_cubit.dart'
    as _i62;
import 'features/admin/presentation/controllers/get_employee_by_id_cubit.dart'
    as _i64;
import 'features/admin/presentation/controllers/get_employee_vacation_cubit.dart'
    as _i65;
import 'features/admin/presentation/controllers/get_employees_by_brunch_id_pagination_cubit.dart'
    as _i63;
import 'features/admin/presentation/controllers/get_manifest_cubit.dart'
    as _i66;
import 'features/admin/presentation/controllers/get_prices_list_cubit.dart'
    as _i67;
import 'features/admin/presentation/controllers/get_trip_information_cubit.dart'
    as _i69;
import 'features/admin/presentation/controllers/get_trips_record_paginated_cubit.dart'
    as _i68;
import 'features/admin/presentation/controllers/get_warehouse_manager_by_id_cubit.dart'
    as _i70;
import 'features/admin/presentation/controllers/get_warehouse_vacation_cubit.dart'
    as _i71;
import 'features/admin/presentation/controllers/log_in_cubit.dart' as _i101;
import 'features/admin/presentation/controllers/promote_employee_cubit.dart'
    as _i72;
import 'features/admin/presentation/controllers/register_cubit.dart' as _i102;
import 'features/admin/presentation/controllers/truck_information_cubit.dart'
    as _i73;
import 'features/admin/presentation/controllers/truck_record_cubit.dart'
    as _i74;
import 'features/admin/presentation/controllers/update_branch_cubit.dart'
    as _i75;
import 'features/admin/presentation/controllers/update_warehouse_cubit.dart'
    as _i76;
import 'features/branchManager/controllers/add_driver_cubit.dart' as _i103;
import 'features/branchManager/controllers/add_employee_cubit.dart' as _i104;
import 'features/branchManager/controllers/add_shipping_cost_cubit.dart'
    as _i105;
import 'features/branchManager/controllers/add_truck_cubit.dart' as _i106;
import 'features/branchManager/controllers/add_vacation_employee_cubit.dart'
    as _i107;
import 'features/branchManager/controllers/add_vacation_warehouse_cubit.dart'
    as _i108;
import 'features/branchManager/controllers/delete_driver_cubit.dart' as _i109;
import 'features/branchManager/controllers/delete_employee_cubit.dart' as _i110;
import 'features/branchManager/controllers/delete_truck_cubit.dart' as _i111;
import 'features/branchManager/controllers/edit_shipping_cost_cubit.dart'
    as _i112;
import 'features/branchManager/controllers/get_all_archive_trips_cubit.dart'
    as _i122;
import 'features/branchManager/controllers/get_all_closed_trips_cubit.dart'
    as _i121;
import 'features/branchManager/controllers/get_all_drivers_cubit.dart' as _i113;
import 'features/branchManager/controllers/get_all_employee_cubit.dart'
    as _i114;
import 'features/branchManager/controllers/get_all_open_trips_cubit.dart'
    as _i123;
import 'features/branchManager/controllers/get_all_truck_pagination_cubit.dart'
    as _i115;
import 'features/branchManager/controllers/log_in_cubit.dart' as _i136;
import 'features/branchManager/controllers/promote_employee_cubit.dart'
    as _i116;
import 'features/branchManager/controllers/rate_employee_cubit.dart' as _i117;
import 'features/branchManager/controllers/update_driver_cubit.dart' as _i118;
import 'features/branchManager/controllers/update_employee_cubit.dart' as _i119;
import 'features/branchManager/controllers/update_truck_cubit.dart' as _i120;
import 'features/branchManager/data/repository/branch_manager_repository.dart'
    as _i100;
import 'features/branchManager/data/web_services/branch_manager_web_services.dart'
    as _i20;
import 'features/driver/data/data_source/driver_web_services.dart' as _i15;
import 'features/driver/data/repository/driver_repository.dart' as _i19;
import 'features/driver/presentation/controllers/driver_log_in_cubit.dart'
    as _i22;
import 'features/driver/presentation/controllers/driver_profile_cubit.dart'
    as _i79;
import 'features/driver/presentation/controllers/edit_driver_profile_cubit.dart'
    as _i80;
import 'features/driver/presentation/controllers/get_all_my_trips_paginated_cubit.dart'
    as _i81;
import 'features/driver/presentation/controllers/get_branch_location_cubit.dart'
    as _i82;
import 'features/driver/presentation/controllers/get_shortest_path_cubit.dart'
    as _i83;
import 'features/driver/presentation/controllers/update_location_driver_cubit.dart'
    as _i84;
import 'features/employee/data/repository/employee_repository.dart' as _i23;
import 'features/employee/data/web_services/employee_web_services.dart' as _i18;
import 'features/employee/presentation/controller/add_compliant_cubit.dart'
    as _i24;
import 'features/employee/presentation/controller/add_customer_cubit.dart'
    as _i25;
import 'features/employee/presentation/controller/add_invoice_cubit.dart'
    as _i26;
import 'features/employee/presentation/controller/add_trip_cubit.dart' as _i27;
import 'features/employee/presentation/controller/archive_trip_cubit.dart'
    as _i28;
import 'features/employee/presentation/controller/cancel_trip_cubit.dart'
    as _i29;
import 'features/employee/presentation/controller/delete_customer_cubit.dart'
    as _i30;
import 'features/employee/presentation/controller/edit_trip_cubit.dart' as _i31;
import 'features/employee/presentation/controller/get_all_customers_paginated_cubit.dart'
    as _i32;
import 'features/employee/presentation/controller/get_all_receipt_cubit.dart'
    as _i33;
import 'features/employee/presentation/controller/get_all_trips_paginated_cubit.dart'
    as _i34;
import 'features/employee/presentation/controller/get_branch_location_employee_cubit.dart'
    as _i35;
import 'features/employee/presentation/controller/get_customer_by_id_cubit.dart'
    as _i36;
import 'features/employee/presentation/controller/get_customer_filter_cubit.dart'
    as _i37;
import 'features/employee/presentation/controller/get_profile_cubit.dart'
    as _i38;
import 'features/employee/presentation/controller/get_trip_report_cubit.dart'
    as _i39;
import 'features/employee/presentation/controller/get_truck_record_cubit.dart'
    as _i40;
import 'features/employee/presentation/controller/get_truck_report_cubit.dart'
    as _i41;
import 'features/employee/presentation/controller/log_in_employee_cubit.dart'
    as _i77;
import 'features/employee/presentation/controller/tracking_driver_cubit.dart'
    as _i42;
import 'features/employee/presentation/controller/trip_archive_cubit.dart'
    as _i43;
import 'features/employee/presentation/controller/update_customer_cubit.dart'
    as _i44;
import 'features/employee/presentation/controller/update_manifest_cubit.dart'
    as _i45;
import 'features/shared/data/repository/shared_repository.dart' as _i78;
import 'features/shared/data/web_services/shared_web_services.dart' as _i17;
import 'features/shared/presentation/controllers/forget_password_cubit.dart'
    as _i86;
import 'features/shared/presentation/controllers/get_all_active_trips_cubit.dart'
    as _i87;
import 'features/shared/presentation/controllers/get_all_archive_trips_cubit.dart'
    as _i88;
import 'features/shared/presentation/controllers/get_all_branches_cubit.dart'
    as _i89;
import 'features/shared/presentation/controllers/get_all_closed_trips_cubit.dart'
    as _i90;
import 'features/shared/presentation/controllers/get_all_drivers_cubit.dart'
    as _i91;
import 'features/shared/presentation/controllers/get_all_paginated_goods_cubit.dart'
    as _i92;
import 'features/shared/presentation/controllers/get_all_truck_record_paginted_cubit.dart'
    as _i93;
import 'features/shared/presentation/controllers/get_branch_details_cubit.dart'
    as _i94;
import 'features/shared/presentation/controllers/get_manifest_cubit.dart'
    as _i95;
import 'features/shared/presentation/controllers/get_roles_cubit.dart' as _i96;
import 'features/shared/presentation/controllers/get_shipping_prices_cubit.dart'
    as _i97;
import 'features/shared/presentation/controllers/get_trip_information_cubit.dart'
    as _i98;
import 'features/shared/presentation/controllers/get_truck_information_cubit.dart'
    as _i99;
import 'features/warehouse/data/data_source/remote_data_source.dart' as _i21;
import 'features/warehouse/data/repository/warehouse_repository.dart' as _i85;
import 'features/warehouse/presentation/controllers/add_good_cubit.dart'
    as _i124;
import 'features/warehouse/presentation/controllers/delete_good_cubit.dart'
    as _i125;
import 'features/warehouse/presentation/controllers/get_all_good_paginated_cubit.dart'
    as _i126;
import 'features/warehouse/presentation/controllers/get_archive_goods_paginated_cubit.dart'
    as _i127;
import 'features/warehouse/presentation/controllers/get_good_cubit.dart'
    as _i128;
import 'features/warehouse/presentation/controllers/get_manifest_cubit.dart'
    as _i129;
import 'features/warehouse/presentation/controllers/get_notification_cubit.dart'
    as _i130;
import 'features/warehouse/presentation/controllers/get_role_cubit.dart'
    as _i131;
import 'features/warehouse/presentation/controllers/getx/cubit/barcode_scanner_cubit.dart'
    as _i3;
import 'features/warehouse/presentation/controllers/getx/cubit/cubit/barcode_scanner_list_cubit.dart'
    as _i4;
import 'features/warehouse/presentation/controllers/inventory_good_cubit.dart'
    as _i132;
import 'features/warehouse/presentation/controllers/login_warehouse_cubit.dart'
    as _i137;
import 'features/warehouse/presentation/controllers/receiving_good_cubit.dart'
    as _i133;
import 'features/warehouse/presentation/controllers/send_trip_status_cubit.dart'
    as _i134;
import 'features/warehouse/presentation/controllers/warehouse_profile_cubit.dart'
    as _i135;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyInjection = _$ThirdPartyInjection();
    gh.factory<_i3.BarcodeScannerCubit>(() => _i3.BarcodeScannerCubit());
    gh.factory<_i4.BarcodeScannerListCubit>(
        () => _i4.BarcodeScannerListCubit());
    gh.singleton<_i5.LoggingInterceptor>(() => _i5.LoggingInterceptor());
    gh.singleton<_i6.ErrorInterceptor>(() => _i6.ErrorInterceptor());
    gh.singleton<_i7.Dio>(() => thirdPartyInjection.dio);
    gh.singleton<_i8.InternetConnectionChecker>(
        () => thirdPartyInjection.internetConnectionChecker);
    gh.singleton<_i9.FirebaseMessaging>(
        () => thirdPartyInjection.firebaseMessaging);
    gh.singleton<_i10.SharedPreferencesUtils>(
        () => thirdPartyInjection.sharedPreferencesUtils);
    gh.lazySingleton<_i11.NetworkInfo>(() => _i11.NetworkInfoImpl(
        connectionChecker: gh<_i8.InternetConnectionChecker>()));
    gh.singleton<_i12.NotificationCubit>(
        () => _i12.NotificationCubit(gh<_i9.FirebaseMessaging>()));
    gh.singleton<_i13.ApiConsumer>(() => _i14.DioConsumer(gh<_i7.Dio>()));
    gh.singleton<_i15.DriverBaseWebServices>(
        () => _i15.DriverWebServicesImpl(apiConsumer: gh<_i13.ApiConsumer>()));
    gh.singleton<_i16.AdminBaseWebService>(
        () => _i16.AdminWebService(apiConsumer: gh<_i13.ApiConsumer>()));
    gh.singleton<_i17.SharedBaseWebServices>(
        () => _i17.SharedWebServiceImpl(apiConsumer: gh<_i13.ApiConsumer>()));
    gh.singleton<_i18.EmployeeBaseWebServices>(() =>
        _i18.EmployeeWebServicesImpl(apiConsumer: gh<_i13.ApiConsumer>()));
    gh.singleton<_i19.DriverBaseRepository>(() => _i19.DriverRepositoryImpl(
          networkInfo: gh<_i11.NetworkInfo>(),
          driverBaseWebServices: gh<_i15.DriverBaseWebServices>(),
        ));
    gh.singleton<_i20.BranchManagerBaseWebServices>(() =>
        _i20.BranchManagerWebServicesImpl(apiConsumer: gh<_i13.ApiConsumer>()));
    gh.singleton<_i21.BaseWarehouseRemoteDataSource>(() =>
        _i21.WarehouseRemoteDataSourceImpl(
            apiConsumer: gh<_i13.ApiConsumer>()));
    gh.factory<_i22.LogInDriverCubit>(() => _i22.LogInDriverCubit(
          gh<_i19.DriverBaseRepository>(),
          gh<_i10.SharedPreferencesUtils>(),
        ));
    gh.singleton<_i23.EmployeeBaseRepository>(() => _i23.EmployeeRepositoryImpl(
          networkInfo: gh<_i11.NetworkInfo>(),
          employeeBaseWebServices: gh<_i18.EmployeeBaseWebServices>(),
        ));
    gh.factory<_i24.AddCompliantCubit>(
        () => _i24.AddCompliantCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i25.AddCustomerCubit>(
        () => _i25.AddCustomerCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i26.AddInvoiceCubit>(
        () => _i26.AddInvoiceCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i27.AddTripCubit>(
        () => _i27.AddTripCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i28.ArchiveTripCubit>(
        () => _i28.ArchiveTripCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i29.CancelTripCubit>(
        () => _i29.CancelTripCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i30.DeleteCustomerCubit>(
        () => _i30.DeleteCustomerCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i31.EditTripCubit>(
        () => _i31.EditTripCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i32.GetAllCustomersEmployeePaginatedCubit>(() =>
        _i32.GetAllCustomersEmployeePaginatedCubit(
            gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i33.GetAllReceiptCubit>(
        () => _i33.GetAllReceiptCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i34.GetAllTripsPaginatedCubit>(() =>
        _i34.GetAllTripsPaginatedCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i35.GetBranchLocationEmployeeCubit>(() =>
        _i35.GetBranchLocationEmployeeCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i36.GetCustomerByIdCubit>(
        () => _i36.GetCustomerByIdCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i37.GetCustomerFilterCubit>(
        () => _i37.GetCustomerFilterCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i38.GetProfileCubit>(
        () => _i38.GetProfileCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i39.GetTripReportCubit>(
        () => _i39.GetTripReportCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i40.GetTruckRecordCubit>(
        () => _i40.GetTruckRecordCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i41.GetTruckReportCubit>(
        () => _i41.GetTruckReportCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i42.TrackingDriverCubit>(
        () => _i42.TrackingDriverCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i43.TripArchiveCubit>(
        () => _i43.TripArchiveCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i44.UpdateCustomerCubit>(
        () => _i44.UpdateCustomerCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.factory<_i45.UpdateManifestCubit>(
        () => _i45.UpdateManifestCubit(gh<_i23.EmployeeBaseRepository>()));
    gh.singleton<_i46.AdminBaseRepository>(() => _i46.AdminRepositoryImpl(
          networkInfo: gh<_i11.NetworkInfo>(),
          adminBaseWebService: gh<_i16.AdminBaseWebService>(),
        ));
    gh.factory<_i47.AddBranchCubit>(
        () => _i47.AddBranchCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i48.AddBranchManagerCubit>(
        () => _i48.AddBranchManagerCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i49.AddWarehouseCubit>(
        () => _i49.AddWarehouseCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i50.AddWarehouseManagerCubit>(
        () => _i50.AddWarehouseManagerCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i51.DeleteBranchCubit>(
        () => _i51.DeleteBranchCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i52.DeleteWarehouseCubit>(
        () => _i52.DeleteWarehouseCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i53.GetAllActiveTripsPaginatedCubit>(() =>
        _i53.GetAllActiveTripsPaginatedCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i54.GetAllArchiveTripsPaginatedCubit>(() =>
        _i54.GetAllArchiveTripsPaginatedCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i55.GetAllBranchesPaginatedCubit>(() =>
        _i55.GetAllBranchesPaginatedCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i56.GetAllCustomersPaginatedCubit>(() =>
        _i56.GetAllCustomersPaginatedCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i57.GetAllEmployeePaginatedCubit>(() =>
        _i57.GetAllEmployeePaginatedCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i58.GetAllTrucksPaginatedCubit>(
        () => _i58.GetAllTrucksPaginatedCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i59.GetAllWarehousePaginatedCubit>(() =>
        _i59.GetAllWarehousePaginatedCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i60.GetBranchEmployeeByIdCubit>(
        () => _i60.GetBranchEmployeeByIdCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i61.GetCustomerByIdCubit>(
        () => _i61.GetCustomerByIdCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i62.GetAllDriversPaginatedCubit>(
        () => _i62.GetAllDriversPaginatedCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i63.GetAllEmployeesPaginatedCubit>(() =>
        _i63.GetAllEmployeesPaginatedCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i64.GetEmployeeByIdCubit>(
        () => _i64.GetEmployeeByIdCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i65.GetEmployeeVacationCubit>(
        () => _i65.GetEmployeeVacationCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i66.GetManifestCubit>(
        () => _i66.GetManifestCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i67.GetTypePriceListPaginatedCubit>(() =>
        _i67.GetTypePriceListPaginatedCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i68.GetAllTripsRecordPaginatedCubit>(() =>
        _i68.GetAllTripsRecordPaginatedCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i69.GetTripInformationCubit>(
        () => _i69.GetTripInformationCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i70.GetWarehouseManagerByIdCubit>(() =>
        _i70.GetWarehouseManagerByIdCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i71.GetWarehouseVacationCubit>(
        () => _i71.GetWarehouseVacationCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i72.PromoteEmployeeCubit>(
        () => _i72.PromoteEmployeeCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i73.TruckInformationCubit>(
        () => _i73.TruckInformationCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i74.TruckRecordCubit>(
        () => _i74.TruckRecordCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i75.UpdateBranchCubit>(
        () => _i75.UpdateBranchCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i76.UpdateWarehouseCubit>(
        () => _i76.UpdateWarehouseCubit(gh<_i46.AdminBaseRepository>()));
    gh.factory<_i77.LogInEmployeeCubit>(() => _i77.LogInEmployeeCubit(
          gh<_i23.EmployeeBaseRepository>(),
          gh<_i10.SharedPreferencesUtils>(),
        ));
    gh.singleton<_i78.SharedBaseRepository>(() => _i78.SharedRepositoryImpl(
          sharedBaseWebServices: gh<_i17.SharedBaseWebServices>(),
          networkInfo: gh<_i11.NetworkInfo>(),
        ));
    gh.factory<_i79.DriverProfileCubit>(
        () => _i79.DriverProfileCubit(gh<_i19.DriverBaseRepository>()));
    gh.factory<_i80.EditDriverProfileCubit>(
        () => _i80.EditDriverProfileCubit(gh<_i19.DriverBaseRepository>()));
    gh.factory<_i81.GetAllMyTripsPaginatedCubit>(() =>
        _i81.GetAllMyTripsPaginatedCubit(gh<_i19.DriverBaseRepository>()));
    gh.factory<_i82.GetBranchLocationCubit>(
        () => _i82.GetBranchLocationCubit(gh<_i19.DriverBaseRepository>()));
    gh.factory<_i83.GetShortestPathCubit>(
        () => _i83.GetShortestPathCubit(gh<_i19.DriverBaseRepository>()));
    gh.factory<_i84.UpdateLocationDriverCubit>(
        () => _i84.UpdateLocationDriverCubit(gh<_i19.DriverBaseRepository>()));
    gh.singleton<_i85.BaseWarehouseRepository>(
        () => _i85.WarehouseRepositoryImpl(
              networkInfo: gh<_i11.NetworkInfo>(),
              baseWarehouseRemoteDataSource:
                  gh<_i21.BaseWarehouseRemoteDataSource>(),
            ));
    gh.factory<_i86.ForgetPasswordSharedCubit>(
        () => _i86.ForgetPasswordSharedCubit(gh<_i78.SharedBaseRepository>()));
    gh.factory<_i87.GetAllActiveTripsPaginatedSharedCubit>(() =>
        _i87.GetAllActiveTripsPaginatedSharedCubit(
            gh<_i78.SharedBaseRepository>()));
    gh.factory<_i88.GetAllArchiveTripsPaginatedSharedCubit>(() =>
        _i88.GetAllArchiveTripsPaginatedSharedCubit(
            gh<_i78.SharedBaseRepository>()));
    gh.factory<_i89.GetAllBranchsPaginatedSharedCubit>(() =>
        _i89.GetAllBranchsPaginatedSharedCubit(
            gh<_i78.SharedBaseRepository>()));
    gh.factory<_i90.GetAllClosedTripsPaginatedSharedCubit>(() =>
        _i90.GetAllClosedTripsPaginatedSharedCubit(
            gh<_i78.SharedBaseRepository>()));
    gh.factory<_i91.GetAllDriversSharedCubit>(
        () => _i91.GetAllDriversSharedCubit(gh<_i78.SharedBaseRepository>()));
    gh.factory<_i92.GetAllGoodsPaginatedSharedCubit>(() =>
        _i92.GetAllGoodsPaginatedSharedCubit(gh<_i78.SharedBaseRepository>()));
    gh.factory<_i93.GetAllTruckRecordPaginatedSharedCubit>(() =>
        _i93.GetAllTruckRecordPaginatedSharedCubit(
            gh<_i78.SharedBaseRepository>()));
    gh.factory<_i94.GetBranchDetailsSharedCubit>(() =>
        _i94.GetBranchDetailsSharedCubit(gh<_i78.SharedBaseRepository>()));
    gh.factory<_i95.GetManifestSharedCubit>(
        () => _i95.GetManifestSharedCubit(gh<_i78.SharedBaseRepository>()));
    gh.factory<_i96.GetRoleCubit>(
        () => _i96.GetRoleCubit(gh<_i78.SharedBaseRepository>()));
    gh.factory<_i97.GetShippingPricesPaginatedSharedCubit>(() =>
        _i97.GetShippingPricesPaginatedSharedCubit(
            gh<_i78.SharedBaseRepository>()));
    gh.factory<_i98.GetTripInformationSharedCubit>(() =>
        _i98.GetTripInformationSharedCubit(gh<_i78.SharedBaseRepository>()));
    gh.factory<_i99.GetTruckInformationSharedCubit>(() =>
        _i99.GetTruckInformationSharedCubit(gh<_i78.SharedBaseRepository>()));
    gh.singleton<_i100.BranchManagerBaseRepository>(() =>
        _i100.BranchManagerRepositoryImpl(
          networkInfo: gh<_i11.NetworkInfo>(),
          branchManagerBaseWebServices: gh<_i20.BranchManagerBaseWebServices>(),
        ));
    gh.factory<_i101.LogInCubit>(() => _i101.LogInCubit(
          gh<_i46.AdminBaseRepository>(),
          gh<_i10.SharedPreferencesUtils>(),
        ));
    gh.factory<_i102.RegisterCubit>(() => _i102.RegisterCubit(
          gh<_i46.AdminBaseRepository>(),
          gh<_i10.SharedPreferencesUtils>(),
        ));
    gh.factory<_i103.AddDriverCubit>(
        () => _i103.AddDriverCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i104.AddEmployeeCubit>(
        () => _i104.AddEmployeeCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i105.AddShippingCostCubit>(() =>
        _i105.AddShippingCostCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i106.AddTruckCubit>(
        () => _i106.AddTruckCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i107.AddVacationEmployeeCubit>(() =>
        _i107.AddVacationEmployeeCubit(
            gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i108.AddVacationWarehouseCubit>(() =>
        _i108.AddVacationWarehouseCubit(
            gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i109.DeleteDriverCubit>(
        () => _i109.DeleteDriverCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i110.DeleteEmployeeCubit>(() =>
        _i110.DeleteEmployeeCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i111.DeleteTruckCubit>(
        () => _i111.DeleteTruckCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i112.EditShippingCostCubit>(() =>
        _i112.EditShippingCostCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i113.GetAllDriversCubit>(() =>
        _i113.GetAllDriversCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i114.GetAllEmployeesBmanagerCubit>(() =>
        _i114.GetAllEmployeesBmanagerCubit(
            gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i115.GetAllTruckRecordPaginatedCubit>(() =>
        _i115.GetAllTruckRecordPaginatedCubit(
            gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i116.PromoteEmployeeCubit>(() =>
        _i116.PromoteEmployeeCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i117.RateEmployeeCubit>(
        () => _i117.RateEmployeeCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i118.UpdateDriverCubit>(
        () => _i118.UpdateDriverCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i119.UpdateEmployeeCubit>(() =>
        _i119.UpdateEmployeeCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i120.UpdateTruckCubit>(
        () => _i120.UpdateTruckCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i121.GetAllClosedTripsCubit>(() =>
        _i121.GetAllClosedTripsCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i122.GetAllArchiveTripsCubit>(() =>
        _i122.GetAllArchiveTripsCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i123.GetAllOpenTripsCubit>(() =>
        _i123.GetAllOpenTripsCubit(gh<_i100.BranchManagerBaseRepository>()));
    gh.factory<_i124.AddGoodCubit>(
        () => _i124.AddGoodCubit(gh<_i85.BaseWarehouseRepository>()));
    gh.factory<_i125.DeleteGoodCubit>(
        () => _i125.DeleteGoodCubit(gh<_i85.BaseWarehouseRepository>()));
    gh.factory<_i126.GetAllGoodsPaginatedCubit>(() =>
        _i126.GetAllGoodsPaginatedCubit(gh<_i85.BaseWarehouseRepository>()));
    gh.factory<_i127.GetArchiveGoodsPaginatedCubit>(() =>
        _i127.GetArchiveGoodsPaginatedCubit(
            gh<_i85.BaseWarehouseRepository>()));
    gh.factory<_i128.GetGoodCubit>(
        () => _i128.GetGoodCubit(gh<_i85.BaseWarehouseRepository>()));
    gh.factory<_i129.GetManifestWarehouseCubit>(() =>
        _i129.GetManifestWarehouseCubit(gh<_i85.BaseWarehouseRepository>()));
    gh.factory<_i130.GetNotificationCubit>(
        () => _i130.GetNotificationCubit(gh<_i85.BaseWarehouseRepository>()));
    gh.factory<_i131.GetRoleCubit>(
        () => _i131.GetRoleCubit(gh<_i85.BaseWarehouseRepository>()));
    gh.factory<_i132.InventoryGoodCubit>(
        () => _i132.InventoryGoodCubit(gh<_i85.BaseWarehouseRepository>()));
    gh.factory<_i133.ReceivingGoodCubit>(
        () => _i133.ReceivingGoodCubit(gh<_i85.BaseWarehouseRepository>()));
    gh.factory<_i134.SendTripStatusCubit>(
        () => _i134.SendTripStatusCubit(gh<_i85.BaseWarehouseRepository>()));
    gh.factory<_i135.GetProfileWarehouseCubit>(() =>
        _i135.GetProfileWarehouseCubit(gh<_i85.BaseWarehouseRepository>()));
    gh.factory<_i136.LogInBMCubit>(() => _i136.LogInBMCubit(
          gh<_i100.BranchManagerBaseRepository>(),
          gh<_i10.SharedPreferencesUtils>(),
        ));
    gh.factory<_i137.LogInWarehouseCubit>(() => _i137.LogInWarehouseCubit(
          gh<_i85.BaseWarehouseRepository>(),
          gh<_i10.SharedPreferencesUtils>(),
        ));
    return this;
  }
}

class _$ThirdPartyInjection extends _i138.ThirdPartyInjection {}
