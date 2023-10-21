// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Toll _$TollFromJson(Map<String, dynamic> json) => Toll(
      id: json['id'] as String,
      name: json['name'] as String,
      location: json['location'] as String,
      tollBooths: (json['tollBooths'] as List<dynamic>)
          .map((e) => TollBooth.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TollToJson(Toll instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'tollBooths': instance.tollBooths,
    };

TollBooth _$TollBoothFromJson(Map<String, dynamic> json) => TollBooth(
      id: json['id'] as String,
      name: json['name'] as String,
      vehiclesProcessed: json['vehiclesProcessed'] as int? ?? 0,
      tollChargesCollected:
          (json['tollChargesCollected'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$TollBoothToJson(TollBooth instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'vehiclesProcessed': instance.vehiclesProcessed,
      'tollChargesCollected': instance.tollChargesCollected,
    };
