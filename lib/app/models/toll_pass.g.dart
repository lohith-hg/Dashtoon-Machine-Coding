// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toll_pass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TollPass _$TollPassFromJson(Map<String, dynamic> json) => TollPass(
      id: json['id'] as String,
      tollId: json['tollId'] as String,
      type: $enumDecode(_$PassTypeEnumMap, json['type']),
      description: json['description'] as String,
      validityPeriod: Duration(microseconds: json['validityPeriod'] as int),
      dateIssued: DateTime.parse(json['dateIssued'] as String),
      prices: (json['prices'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$VehicleTypeEnumMap, k), (e as num).toDouble()),
      ),
      vehicleNumber: json['vehicleNumber'] as String?,
    );

Map<String, dynamic> _$TollPassToJson(TollPass instance) => <String, dynamic>{
      'id': instance.id,
      'tollId': instance.tollId,
      'type': _$PassTypeEnumMap[instance.type]!,
      'description': instance.description,
      'dateIssued': instance.dateIssued.toIso8601String(),
      'validityPeriod': instance.validityPeriod.inMicroseconds,
      'prices':
          instance.prices.map((k, e) => MapEntry(_$VehicleTypeEnumMap[k]!, e)),
      'vehicleNumber': instance.vehicleNumber,
    };

const _$PassTypeEnumMap = {
  PassType.singlePass: 'singlePass',
  PassType.returnPass: 'returnPass',
  PassType.sevenDayPass: 'sevenDayPass',
};

const _$VehicleTypeEnumMap = {
  VehicleType.twoWheeler: 'twoWheeler',
  VehicleType.fourWheeler: 'fourWheeler',
};
