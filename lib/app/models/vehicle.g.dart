// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vehicle _$VehicleFromJson(Map<String, dynamic> json) => Vehicle(
      registrationNumber: json['registrationNumber'] as String,
      vehicleType: $enumDecode(_$VehicleTypeEnumMap, json['vehicleType']),
      currentPass: json['currentPass'] == null
          ? null
          : TollPass.fromJson(json['currentPass'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehicleToJson(Vehicle instance) => <String, dynamic>{
      'registrationNumber': instance.registrationNumber,
      'vehicleType': _$VehicleTypeEnumMap[instance.vehicleType]!,
      'currentPass': instance.currentPass,
    };

const _$VehicleTypeEnumMap = {
  VehicleType.twoWheeler: 'twoWheeler',
  VehicleType.fourWheeler: 'fourWheeler',
};
