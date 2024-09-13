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
import 'core/third_party_injection.dart' as _i154;
import 'core/utils/cubit/notification_cubit.dart' as _i12;
import 'core/utils/shared_preference_utils.dart' as _i10;
import 'features/admin/data/repository/admin_repository.dart' as _i47;
import 'features/admin/data/web_services/admin_web_service.dart' as _i17;
import 'features/admin/presentation/controllers/add_branch_cubit.dart' as _i49;
import 'features/admin/presentation/controllers/add_branch_manager_cubit.dart'
    as _i50;
import 'features/admin/presentation/controllers/add_warehouse_cubit.dart'
    as _i51;
import 'features/admin/presentation/controllers/add_warehouse_manager_cubit.dart'
    as _i52;
import 'features/admin/presentation/controllers/delete_branch_cubit.dart'
    as _i53;
import 'features/admin/presentation/controllers/delete_warehouse_cubit.dart'
    as _i54;
import 'features/admin/presentation/controllers/get_all_active_trips_paginated_cubit.dart'
    as _i55;
import 'features/admin/presentation/controllers/get_all_archive_trips_paginated_cubit.dart'
    as _i56;
import 'features/admin/presentation/controllers/get_all_branches_cubit.dart'
    as _i57;
import 'features/admin/presentation/controllers/get_all_customer_paginated_cubit.dart'
    as _i58;
import 'features/admin/presentation/controllers/get_all_employee_paginated_cubit.dart'
    as _i59;
import 'features/admin/presentation/controllers/get_all_trucks_by_branch_id_pagination_cubit.dart'
    as _i60;
import 'features/admin/presentation/controllers/get_all_warehouses_paginated_cubit.dart'
    as _i61;
import 'features/admin/presentation/controllers/get_branch_employee_cubit.dart'
    as _i62;
import 'features/admin/presentation/controllers/get_customer_by_id_cubit.dart'
    as _i63;
import 'features/admin/presentation/controllers/get_drivers_by_branch_id_pagination_cubit.dart'
    as _i64;
import 'features/admin/presentation/controllers/get_employee_by_id_cubit.dart'
    as _i66;
import 'features/admin/presentation/controllers/get_employee_vacation_cubit.dart'
    as _i67;
import 'features/admin/presentation/controllers/get_employees_by_brunch_id_pagination_cubit.dart'
    as _i65;
import 'features/admin/presentation/controllers/get_manifest_cubit.dart'
    as _i68;
import 'features/admin/presentation/controllers/get_prices_list_cubit.dart'
    as _i69;
import 'features/admin/presentation/controllers/get_trip_information_cubit.dart'
    as _i71;
import 'features/admin/presentation/controllers/get_trips_record_paginated_cubit.dart'
    as _i70;
import 'features/admin/presentation/controllers/get_warehouse_manager_by_id_cubit.dart'
    as _i72;
import 'features/admin/presentation/controllers/get_warehouse_vacation_cubit.dart'
    as _i73;
import 'features/admin/presentation/controllers/log_in_cubit.dart' as _i108;
import 'features/admin/presentation/controllers/promote_employee_cubit.dart'
    as _i74;
import 'features/admin/presentation/controllers/register_cubit.dart' as _i109;
import 'features/admin/presentation/controllers/truck_information_cubit.dart'
    as _i75;
import 'features/admin/presentation/controllers/truck_record_cubit.dart'
    as _i76;
import 'features/admin/presentation/controllers/update_branch_cubit.dart'
    as _i77;
import 'features/admin/presentation/controllers/update_warehouse_cubit.dart'
    as _i78;
import 'features/branchManager/controllers/add_driver_cubit.dart' as _i110;
import 'features/branchManager/controllers/add_employee_cubit.dart' as _i111;
import 'features/branchManager/controllers/add_shipping_cost_cubit.dart'
    as _i112;
import 'features/branchManager/controllers/add_truck_cubit.dart' as _i113;
import 'features/branchManager/controllers/add_vacation_employee_cubit.dart'
    as _i114;
import 'features/branchManager/controllers/add_vacation_warehouse_cubit.dart'
    as _i115;
import 'features/branchManager/controllers/delete_driver_cubit.dart' as _i116;
import 'features/branchManager/controllers/delete_employee_cubit.dart' as _i117;
import 'features/branchManager/controllers/delete_truck_cubit.dart' as _i118;
import 'features/branchManager/controllers/edit_shipping_cost_cubit.dart'
    as _i119;
import 'features/branchManager/controllers/get_all_archive_trips_cubit.dart'
    as _i120;
import 'features/branchManager/controllers/get_all_closed_trips_cubit.dart'
    as _i121;
import 'features/branchManager/controllers/get_all_customers_for_bm_cubit.dart'
    as _i122;
import 'features/branchManager/controllers/get_all_drivers_cubit.dart' as _i123;
import 'features/branchManager/controllers/get_all_employee_cubit.dart'
    as _i124;
import 'features/branchManager/controllers/get_all_open_trips_cubit.dart'
    as _i125;
import 'features/branchManager/controllers/get_all_trips_by_trucks_cubit.dart'
    as _i139;
import 'features/branchManager/controllers/get_all_truck_pagination_cubit.dart'
    as _i126;
import 'features/branchManager/controllers/get_all_trucks_by_branch_cubit.dart'
    as _i138;
import 'features/branchManager/controllers/get_branches_pagenation_cubit.dart'
    as _i127;
import 'features/branchManager/controllers/get_info_branch_cubit.dart' as _i137;
import 'features/branchManager/controllers/get_manifest_bm_cubit.dart' as _i128;
import 'features/branchManager/controllers/get_profile_cubit.dart' as _i129;
import 'features/branchManager/controllers/get_shipping_cubit.dart' as _i130;
import 'features/branchManager/controllers/get_trip_information_cubit.dart'
    as _i131;
import 'features/branchManager/controllers/log_in_cubit.dart' as _i152;
import 'features/branchManager/controllers/promote_employee_cubit.dart'
    as _i132;
import 'features/branchManager/controllers/rate_employee_cubit.dart' as _i133;
import 'features/branchManager/controllers/update_driver_cubit.dart' as _i134;
import 'features/branchManager/controllers/update_employee_cubit.dart' as _i135;
import 'features/branchManager/controllers/update_truck_cubit.dart' as _i136;
import 'features/branchManager/data/repository/branch_manager_repository.dart'
    as _i107;
import 'features/branchManager/data/web_services/branch_manager_web_services.dart'
    as _i21;
import 'features/customer/conroller/add_complient_cubit.dart' as _i87;
import 'features/customer/conroller/get_arrived_shippings_cubit.dart' as _i88;
import 'features/customer/conroller/get_not_arrived_shipping_cubit.dart'
    as _i89;
import 'features/customer/conroller/get_not_received_shipping_cubit.dart'
    as _i90;
import 'features/customer/conroller/get_received_shipping_cubit.dart' as _i91;
import 'features/customer/data/repository/customer_repository.dart' as _i48;
import 'features/customer/data/web_services/customer_web_service.dart' as _i15;
import 'features/driver/data/data_source/driver_web_services.dart' as _i16;
import 'features/driver/data/repository/driver_repository.dart' as _i20;
import 'features/driver/presentation/controllers/driver_log_in_cubit.dart'
    as _i23;
import 'features/driver/presentation/controllers/driver_profile_cubit.dart'
    as _i81;
import 'features/driver/presentation/controllers/edit_driver_profile_cubit.dart'
    as _i82;
import 'features/driver/presentation/controllers/get_all_my_trips_paginated_cubit.dart'
    as _i83;
import 'features/driver/presentation/controllers/get_branch_location_cubit.dart'
    as _i84;
import 'features/driver/presentation/controllers/get_shortest_path_cubit.dart'
    as _i85;
import 'features/driver/presentation/controllers/update_location_driver_cubit.dart'
    as _i86;
import 'features/employee/data/repository/employee_repository.dart' as _i24;
import 'features/employee/data/web_services/employee_web_services.dart' as _i19;
import 'features/employee/presentation/controller/add_compliant_cubit.dart'
    as _i25;
import 'features/employee/presentation/controller/add_customer_cubit.dart'
    as _i26;
import 'features/employee/presentation/controller/add_invoice_cubit.dart'
    as _i27;
import 'features/employee/presentation/controller/add_trip_cubit.dart' as _i28;
import 'features/employee/presentation/controller/archive_trip_cubit.dart'
    as _i29;
import 'features/employee/presentation/controller/cancel_trip_cubit.dart'
    as _i30;
import 'features/employee/presentation/controller/delete_customer_cubit.dart'
    as _i31;
import 'features/employee/presentation/controller/edit_trip_cubit.dart' as _i32;
import 'features/employee/presentation/controller/get_all_customers_paginated_cubit.dart'
    as _i33;
import 'features/employee/presentation/controller/get_all_receipt_cubit.dart'
    as _i34;
import 'features/employee/presentation/controller/get_all_trips_paginated_cubit.dart'
    as _i35;
import 'features/employee/presentation/controller/get_branch_location_employee_cubit.dart'
    as _i36;
import 'features/employee/presentation/controller/get_customer_by_id_cubit.dart'
    as _i37;
import 'features/employee/presentation/controller/get_customer_filter_cubit.dart'
    as _i38;
import 'features/employee/presentation/controller/get_profile_cubit.dart'
    as _i39;
import 'features/employee/presentation/controller/get_trip_report_cubit.dart'
    as _i40;
import 'features/employee/presentation/controller/get_truck_record_cubit.dart'
    as _i41;
import 'features/employee/presentation/controller/get_truck_report_cubit.dart'
    as _i42;
import 'features/employee/presentation/controller/log_in_employee_cubit.dart'
    as _i79;
import 'features/employee/presentation/controller/tracking_driver_cubit.dart'
    as _i43;
import 'features/employee/presentation/controller/trip_archive_cubit.dart'
    as _i44;
import 'features/employee/presentation/controller/update_customer_cubit.dart'
    as _i45;
import 'features/employee/presentation/controller/update_manifest_cubit.dart'
    as _i46;
import 'features/shared/data/repository/shared_repository.dart' as _i80;
import 'features/shared/data/web_services/shared_web_services.dart' as _i18;
import 'features/shared/presentation/controllers/forget_password_cubit.dart'
    as _i93;
import 'features/shared/presentation/controllers/get_all_active_trips_cubit.dart'
    as _i94;
import 'features/shared/presentation/controllers/get_all_archive_trips_cubit.dart'
    as _i95;
import 'features/shared/presentation/controllers/get_all_branches_cubit.dart'
    as _i96;
import 'features/shared/presentation/controllers/get_all_closed_trips_cubit.dart'
    as _i97;
import 'features/shared/presentation/controllers/get_all_drivers_cubit.dart'
    as _i98;
import 'features/shared/presentation/controllers/get_all_paginated_goods_cubit.dart'
    as _i99;
import 'features/shared/presentation/controllers/get_all_truck_record_paginted_cubit.dart'
    as _i100;
import 'features/shared/presentation/controllers/get_branch_details_cubit.dart'
    as _i101;
import 'features/shared/presentation/controllers/get_manifest_cubit.dart'
    as _i102;
import 'features/shared/presentation/controllers/get_roles_cubit.dart' as _i103;
import 'features/shared/presentation/controllers/get_shipping_prices_cubit.dart'
    as _i104;
import 'features/shared/presentation/controllers/get_trip_information_cubit.dart'
    as _i105;
import 'features/shared/presentation/controllers/get_truck_information_cubit.dart'
    as _i106;
import 'features/warehouse/data/data_source/remote_data_source.dart' as _i22;
import 'features/warehouse/data/repository/warehouse_repository.dart' as _i92;
import 'features/warehouse/presentation/controllers/add_good_cubit.dart'
    as _i140;
import 'features/warehouse/presentation/controllers/delete_good_cubit.dart'
    as _i141;
import 'features/warehouse/presentation/controllers/get_all_good_paginated_cubit.dart'
    as _i142;
import 'features/warehouse/presentation/controllers/get_archive_goods_paginated_cubit.dart'
    as _i143;
import 'features/warehouse/presentation/controllers/get_good_cubit.dart'
    as _i144;
import 'features/warehouse/presentation/controllers/get_manifest_cubit.dart'
    as _i145;
import 'features/warehouse/presentation/controllers/get_notification_cubit.dart'
    as _i146;
import 'features/warehouse/presentation/controllers/get_role_cubit.dart'
    as _i147;
import 'features/warehouse/presentation/controllers/getx/cubit/barcode_scanner_cubit.dart'
    as _i3;
import 'features/warehouse/presentation/controllers/getx/cubit/cubit/barcode_scanner_list_cubit.dart'
    as _i4;
import 'features/warehouse/presentation/controllers/inventory_good_cubit.dart'
    as _i148;
import 'features/warehouse/presentation/controllers/login_warehouse_cubit.dart'
    as _i153;
import 'features/warehouse/presentation/controllers/receiving_good_cubit.dart'
    as _i149;
import 'features/warehouse/presentation/controllers/send_trip_status_cubit.dart'
    as _i150;
import 'features/warehouse/presentation/controllers/warehouse_profile_cubit.dart'
    as _i151;

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
    gh.singleton<_i15.CustomerBaseWebServices>(() =>
        _i15.CustomerWebServicesImpl(apiConsumer: gh<_i13.ApiConsumer>()));
    gh.singleton<_i16.DriverBaseWebServices>(
        () => _i16.DriverWebServicesImpl(apiConsumer: gh<_i13.ApiConsumer>()));
    gh.singleton<_i17.AdminBaseWebService>(
        () => _i17.AdminWebService(apiConsumer: gh<_i13.ApiConsumer>()));
    gh.singleton<_i18.SharedBaseWebServices>(
        () => _i18.SharedWebServiceImpl(apiConsumer: gh<_i13.ApiConsumer>()));
    gh.singleton<_i19.EmployeeBaseWebServices>(() =>
        _i19.EmployeeWebServicesImpl(apiConsumer: gh<_i13.ApiConsumer>()));
    gh.singleton<_i20.DriverBaseRepository>(() => _i20.DriverRepositoryImpl(
          networkInfo: gh<_i11.NetworkInfo>(),
          driverBaseWebServices: gh<_i16.DriverBaseWebServices>(),
        ));
    gh.singleton<_i21.BranchManagerBaseWebServices>(() =>
        _i21.BranchManagerWebServicesImpl(apiConsumer: gh<_i13.ApiConsumer>()));
    gh.singleton<_i22.BaseWarehouseRemoteDataSource>(() =>
        _i22.WarehouseRemoteDataSourceImpl(
            apiConsumer: gh<_i13.ApiConsumer>()));
    gh.factory<_i23.LogInDriverCubit>(() => _i23.LogInDriverCubit(
          gh<_i20.DriverBaseRepository>(),
          gh<_i10.SharedPreferencesUtils>(),
        ));
    gh.singleton<_i24.EmployeeBaseRepository>(() => _i24.EmployeeRepositoryImpl(
          networkInfo: gh<_i11.NetworkInfo>(),
          employeeBaseWebServices: gh<_i19.EmployeeBaseWebServices>(),
        ));
    gh.factory<_i25.AddCompliantCubit>(
        () => _i25.AddCompliantCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i26.AddCustomerCubit>(
        () => _i26.AddCustomerCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i27.AddInvoiceCubit>(
        () => _i27.AddInvoiceCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i28.AddTripCubit>(
        () => _i28.AddTripCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i29.ArchiveTripCubit>(
        () => _i29.ArchiveTripCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i30.CancelTripCubit>(
        () => _i30.CancelTripCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i31.DeleteCustomerCubit>(
        () => _i31.DeleteCustomerCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i32.EditTripCubit>(
        () => _i32.EditTripCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i33.GetAllCustomersEmployeePaginatedCubit>(() =>
        _i33.GetAllCustomersEmployeePaginatedCubit(
            gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i34.GetAllReceiptCubit>(
        () => _i34.GetAllReceiptCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i35.GetAllTripsPaginatedCubit>(() =>
        _i35.GetAllTripsPaginatedCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i36.GetBranchLocationEmployeeCubit>(() =>
        _i36.GetBranchLocationEmployeeCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i37.GetCustomerByIdCubit>(
        () => _i37.GetCustomerByIdCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i38.GetCustomerFilterCubit>(
        () => _i38.GetCustomerFilterCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i39.GetProfileCubit>(
        () => _i39.GetProfileCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i40.GetTripReportCubit>(
        () => _i40.GetTripReportCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i41.GetTruckRecordCubit>(
        () => _i41.GetTruckRecordCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i42.GetTruckReportCubit>(
        () => _i42.GetTruckReportCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i43.TrackingDriverCubit>(
        () => _i43.TrackingDriverCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i44.TripArchiveCubit>(
        () => _i44.TripArchiveCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i45.UpdateCustomerCubit>(
        () => _i45.UpdateCustomerCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.factory<_i46.UpdateManifestCubit>(
        () => _i46.UpdateManifestCubit(gh<_i24.EmployeeBaseRepository>()));
    gh.singleton<_i47.AdminBaseRepository>(() => _i47.AdminRepositoryImpl(
          networkInfo: gh<_i11.NetworkInfo>(),
          adminBaseWebService: gh<_i17.AdminBaseWebService>(),
        ));
    gh.singleton<_i48.CustomerBaseRepository>(() => _i48.CustomerRepositoryImpl(
          networkInfo: gh<_i11.NetworkInfo>(),
          customerBaseWebServices: gh<_i15.CustomerBaseWebServices>(),
        ));
    gh.factory<_i49.AddBranchCubit>(
        () => _i49.AddBranchCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i50.AddBranchManagerCubit>(
        () => _i50.AddBranchManagerCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i51.AddWarehouseCubit>(
        () => _i51.AddWarehouseCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i52.AddWarehouseManagerCubit>(
        () => _i52.AddWarehouseManagerCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i53.DeleteBranchCubit>(
        () => _i53.DeleteBranchCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i54.DeleteWarehouseCubit>(
        () => _i54.DeleteWarehouseCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i55.GetAllActiveTripsPaginatedCubit>(() =>
        _i55.GetAllActiveTripsPaginatedCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i56.GetAllArchiveTripsPaginatedCubit>(() =>
        _i56.GetAllArchiveTripsPaginatedCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i57.GetAllBranchesPaginatedCubit>(() =>
        _i57.GetAllBranchesPaginatedCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i58.GetAllCustomersPaginatedCubit>(() =>
        _i58.GetAllCustomersPaginatedCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i59.GetAllEmployeePaginatedCubit>(() =>
        _i59.GetAllEmployeePaginatedCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i60.GetAllTrucksPaginatedCubit>(
        () => _i60.GetAllTrucksPaginatedCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i61.GetAllWarehousePaginatedCubit>(() =>
        _i61.GetAllWarehousePaginatedCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i62.GetBranchEmployeeByIdCubit>(
        () => _i62.GetBranchEmployeeByIdCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i63.GetCustomerByIdCubit>(
        () => _i63.GetCustomerByIdCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i64.GetAllDriversPaginatedCubit>(
        () => _i64.GetAllDriversPaginatedCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i65.GetAllEmployeesPaginatedCubit>(() =>
        _i65.GetAllEmployeesPaginatedCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i66.GetEmployeeByIdCubit>(
        () => _i66.GetEmployeeByIdCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i67.GetEmployeeVacationCubit>(
        () => _i67.GetEmployeeVacationCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i68.GetManifestCubit>(
        () => _i68.GetManifestCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i69.GetTypePriceListPaginatedCubit>(() =>
        _i69.GetTypePriceListPaginatedCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i70.GetAllTripsRecordPaginatedCubit>(() =>
        _i70.GetAllTripsRecordPaginatedCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i71.GetTripInformationCubit>(
        () => _i71.GetTripInformationCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i72.GetWarehouseManagerByIdCubit>(() =>
        _i72.GetWarehouseManagerByIdCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i73.GetWarehouseVacationCubit>(
        () => _i73.GetWarehouseVacationCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i74.PromoteEmployeeCubit>(
        () => _i74.PromoteEmployeeCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i75.TruckInformationCubit>(
        () => _i75.TruckInformationCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i76.TruckRecordCubit>(
        () => _i76.TruckRecordCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i77.UpdateBranchCubit>(
        () => _i77.UpdateBranchCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i78.UpdateWarehouseCubit>(
        () => _i78.UpdateWarehouseCubit(gh<_i47.AdminBaseRepository>()));
    gh.factory<_i79.LogInEmployeeCubit>(() => _i79.LogInEmployeeCubit(
          gh<_i24.EmployeeBaseRepository>(),
          gh<_i10.SharedPreferencesUtils>(),
        ));
    gh.singleton<_i80.SharedBaseRepository>(() => _i80.SharedRepositoryImpl(
          sharedBaseWebServices: gh<_i18.SharedBaseWebServices>(),
          networkInfo: gh<_i11.NetworkInfo>(),
        ));
    gh.factory<_i81.DriverProfileCubit>(
        () => _i81.DriverProfileCubit(gh<_i20.DriverBaseRepository>()));
    gh.factory<_i82.EditDriverProfileCubit>(
        () => _i82.EditDriverProfileCubit(gh<_i20.DriverBaseRepository>()));
    gh.factory<_i83.GetAllMyTripsPaginatedCubit>(() =>
        _i83.GetAllMyTripsPaginatedCubit(gh<_i20.DriverBaseRepository>()));
    gh.factory<_i84.GetBranchLocationCubit>(
        () => _i84.GetBranchLocationCubit(gh<_i20.DriverBaseRepository>()));
    gh.factory<_i85.GetShortestPathCubit>(
        () => _i85.GetShortestPathCubit(gh<_i20.DriverBaseRepository>()));
    gh.factory<_i86.UpdateLocationDriverCubit>(
        () => _i86.UpdateLocationDriverCubit(gh<_i20.DriverBaseRepository>()));
    gh.factory<_i87.AddComplaintBMCubit>(
        () => _i87.AddComplaintBMCubit(gh<_i48.CustomerBaseRepository>()));
    gh.factory<_i88.GetArrivedShippingCubit>(
        () => _i88.GetArrivedShippingCubit(gh<_i48.CustomerBaseRepository>()));
    gh.factory<_i89.GetNotArrivedShippingCubit>(() =>
        _i89.GetNotArrivedShippingCubit(gh<_i48.CustomerBaseRepository>()));
    gh.factory<_i90.GetNotReceivedShippingCubit>(() =>
        _i90.GetNotReceivedShippingCubit(gh<_i48.CustomerBaseRepository>()));
    gh.factory<_i91.GetReceivedShippingCubit>(
        () => _i91.GetReceivedShippingCubit(gh<_i48.CustomerBaseRepository>()));
    gh.singleton<_i92.BaseWarehouseRepository>(
        () => _i92.WarehouseRepositoryImpl(
              networkInfo: gh<_i11.NetworkInfo>(),
              baseWarehouseRemoteDataSource:
                  gh<_i22.BaseWarehouseRemoteDataSource>(),
            ));
    gh.factory<_i93.ForgetPasswordSharedCubit>(
        () => _i93.ForgetPasswordSharedCubit(gh<_i80.SharedBaseRepository>()));
    gh.factory<_i94.GetAllActiveTripsPaginatedSharedCubit>(() =>
        _i94.GetAllActiveTripsPaginatedSharedCubit(
            gh<_i80.SharedBaseRepository>()));
    gh.factory<_i95.GetAllArchiveTripsPaginatedSharedCubit>(() =>
        _i95.GetAllArchiveTripsPaginatedSharedCubit(
            gh<_i80.SharedBaseRepository>()));
    gh.factory<_i96.GetAllBranchsPaginatedSharedCubit>(() =>
        _i96.GetAllBranchsPaginatedSharedCubit(
            gh<_i80.SharedBaseRepository>()));
    gh.factory<_i97.GetAllClosedTripsPaginatedSharedCubit>(() =>
        _i97.GetAllClosedTripsPaginatedSharedCubit(
            gh<_i80.SharedBaseRepository>()));
    gh.factory<_i98.GetAllDriversSharedCubit>(
        () => _i98.GetAllDriversSharedCubit(gh<_i80.SharedBaseRepository>()));
    gh.factory<_i99.GetAllGoodsPaginatedSharedCubit>(() =>
        _i99.GetAllGoodsPaginatedSharedCubit(gh<_i80.SharedBaseRepository>()));
    gh.factory<_i100.GetAllTruckRecordPaginatedSharedCubit>(() =>
        _i100.GetAllTruckRecordPaginatedSharedCubit(
            gh<_i80.SharedBaseRepository>()));
    gh.factory<_i101.GetBranchDetailsSharedCubit>(() =>
        _i101.GetBranchDetailsSharedCubit(gh<_i80.SharedBaseRepository>()));
    gh.factory<_i102.GetManifestSharedCubit>(
        () => _i102.GetManifestSharedCubit(gh<_i80.SharedBaseRepository>()));
    gh.factory<_i103.GetRoleCubit>(
        () => _i103.GetRoleCubit(gh<_i80.SharedBaseRepository>()));
    gh.factory<_i104.GetShippingPricesPaginatedSharedCubit>(() =>
        _i104.GetShippingPricesPaginatedSharedCubit(
            gh<_i80.SharedBaseRepository>()));
    gh.factory<_i105.GetTripInformationSharedCubit>(() =>
        _i105.GetTripInformationSharedCubit(gh<_i80.SharedBaseRepository>()));
    gh.factory<_i106.GetTruckInformationSharedCubit>(() =>
        _i106.GetTruckInformationSharedCubit(gh<_i80.SharedBaseRepository>()));
    gh.singleton<_i107.BranchManagerBaseRepository>(() =>
        _i107.BranchManagerRepositoryImpl(
          networkInfo: gh<_i11.NetworkInfo>(),
          branchManagerBaseWebServices: gh<_i21.BranchManagerBaseWebServices>(),
        ));
    gh.factory<_i108.LogInCubit>(() => _i108.LogInCubit(
          gh<_i47.AdminBaseRepository>(),
          gh<_i10.SharedPreferencesUtils>(),
        ));
    gh.factory<_i109.RegisterCubit>(() => _i109.RegisterCubit(
          gh<_i47.AdminBaseRepository>(),
          gh<_i10.SharedPreferencesUtils>(),
        ));
    gh.factory<_i110.AddDriverCubit>(
        () => _i110.AddDriverCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i111.AddEmployeeCubit>(
        () => _i111.AddEmployeeCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i112.AddShippingCostCubit>(() =>
        _i112.AddShippingCostCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i113.AddTruckCubit>(
        () => _i113.AddTruckCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i114.AddVacationEmployeeCubit>(() =>
        _i114.AddVacationEmployeeCubit(
            gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i115.AddVacationWarehouseCubit>(() =>
        _i115.AddVacationWarehouseCubit(
            gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i116.DeleteDriverCubit>(
        () => _i116.DeleteDriverCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i117.DeleteEmployeeCubit>(() =>
        _i117.DeleteEmployeeCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i118.DeleteTruckCubit>(
        () => _i118.DeleteTruckCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i119.EditShippingCostCubit>(() =>
        _i119.EditShippingCostCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i120.GetAllArchiveTripsCubit>(() =>
        _i120.GetAllArchiveTripsCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i121.GetAllClosedTripsCubit>(() =>
        _i121.GetAllClosedTripsCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i122.GetAllCustomersForBMCubit>(() =>
        _i122.GetAllCustomersForBMCubit(
            gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i123.GetAllDriversCubit>(() =>
        _i123.GetAllDriversCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i124.GetAllEmployeesBmanagerCubit>(() =>
        _i124.GetAllEmployeesBmanagerCubit(
            gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i125.GetAllOpenTripsCubit>(() =>
        _i125.GetAllOpenTripsCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i126.GetAllTruckRecordPaginatedCubit>(() =>
        _i126.GetAllTruckRecordPaginatedCubit(
            gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i127.GetAllBranchesBMPaginatedCubit>(() =>
        _i127.GetAllBranchesBMPaginatedCubit(
            gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i128.GetManifestBMCubit>(() =>
        _i128.GetManifestBMCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i129.GetProfileBMCubit>(
        () => _i129.GetProfileBMCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i130.GetShippingCubit>(
        () => _i130.GetShippingCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i131.GetTripInfoCubit>(
        () => _i131.GetTripInfoCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i132.PromoteEmployeeCubit>(() =>
        _i132.PromoteEmployeeCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i133.RateEmployeeCubit>(
        () => _i133.RateEmployeeCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i134.UpdateDriverCubit>(
        () => _i134.UpdateDriverCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i135.UpdateEmployeeCubit>(() =>
        _i135.UpdateEmployeeCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i136.UpdateTruckCubit>(
        () => _i136.UpdateTruckCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i137.GetInfoForBranchBMCubit>(() =>
        _i137.GetInfoForBranchBMCubit(gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i138.GetAllTrucksByBranchCubit>(() =>
        _i138.GetAllTrucksByBranchCubit(
            gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i139.GetAllTripsByTrucksCubit>(() =>
        _i139.GetAllTripsByTrucksCubit(
            gh<_i107.BranchManagerBaseRepository>()));
    gh.factory<_i140.AddGoodCubit>(
        () => _i140.AddGoodCubit(gh<_i92.BaseWarehouseRepository>()));
    gh.factory<_i141.DeleteGoodCubit>(
        () => _i141.DeleteGoodCubit(gh<_i92.BaseWarehouseRepository>()));
    gh.factory<_i142.GetAllGoodsPaginatedCubit>(() =>
        _i142.GetAllGoodsPaginatedCubit(gh<_i92.BaseWarehouseRepository>()));
    gh.factory<_i143.GetArchiveGoodsPaginatedCubit>(() =>
        _i143.GetArchiveGoodsPaginatedCubit(
            gh<_i92.BaseWarehouseRepository>()));
    gh.factory<_i144.GetGoodCubit>(
        () => _i144.GetGoodCubit(gh<_i92.BaseWarehouseRepository>()));
    gh.factory<_i145.GetManifestWarehouseCubit>(() =>
        _i145.GetManifestWarehouseCubit(gh<_i92.BaseWarehouseRepository>()));
    gh.factory<_i146.GetNotificationCubit>(
        () => _i146.GetNotificationCubit(gh<_i92.BaseWarehouseRepository>()));
    gh.factory<_i147.GetRoleCubit>(
        () => _i147.GetRoleCubit(gh<_i92.BaseWarehouseRepository>()));
    gh.factory<_i148.InventoryGoodCubit>(
        () => _i148.InventoryGoodCubit(gh<_i92.BaseWarehouseRepository>()));
    gh.factory<_i149.ReceivingGoodCubit>(
        () => _i149.ReceivingGoodCubit(gh<_i92.BaseWarehouseRepository>()));
    gh.factory<_i150.SendTripStatusCubit>(
        () => _i150.SendTripStatusCubit(gh<_i92.BaseWarehouseRepository>()));
    gh.factory<_i151.GetProfileWarehouseCubit>(() =>
        _i151.GetProfileWarehouseCubit(gh<_i92.BaseWarehouseRepository>()));
    gh.factory<_i152.LogInBMCubit>(() => _i152.LogInBMCubit(
          gh<_i107.BranchManagerBaseRepository>(),
          gh<_i10.SharedPreferencesUtils>(),
        ));
    gh.factory<_i153.LogInWarehouseCubit>(() => _i153.LogInWarehouseCubit(
          gh<_i92.BaseWarehouseRepository>(),
          gh<_i10.SharedPreferencesUtils>(),
        ));
    return this;
  }
}

class _$ThirdPartyInjection extends _i154.ThirdPartyInjection {}
