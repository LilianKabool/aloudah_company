// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_information_branch_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInfoBranchEntity _$GetInfoBranchEntityFromJson(Map<String, dynamic> json) =>
    GetInfoBranchEntity(
      desk: json['desk'] as String,
      address: json['address'] as String,
      manager: json['manager'] as String,
      mobile: (json['mobile'] as num).toInt(),
      openingDate: DateTime.parse(json['openingDate'] as String),
      trips: (json['trips'] as List<dynamic>)
          .map((e) => Trip.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetInfoBranchEntityToJson(
        GetInfoBranchEntity instance) =>
    <String, dynamic>{
      'desk': instance.desk,
      'address': instance.address,
      'manager': instance.manager,
      'mobile': instance.mobile,
      'openingDate': instance.openingDate.toIso8601String(),
      'trips': instance.trips,
    };

Trip _$TripFromJson(Map<String, dynamic> json) => Trip(
      number: json['number'] as String,
      date: json['date'] as String,
      destination: json['destination'] as String,
    );

Map<String, dynamic> _$TripToJson(Trip instance) => <String, dynamic>{
      'number': instance.number,
      'date': instance.date,
      'destination': instance.destination,
    };
