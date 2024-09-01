
import 'package:aloudeh_company/features/admin/data/entity/log_in_admin_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/login_bm_entity.dart';

class LogInBmModel extends LogInBMEntity{
  LogInBmModel({required super.token});


  factory LogInBmModel.fromEntity(LogInBMEntity entity) {
    return LogInBmModel(
      token: entity.token,
    );
  }

  LogInAdminEntity toEntity() {
    return LogInAdminEntity(
      token: token,
    );
  }

}