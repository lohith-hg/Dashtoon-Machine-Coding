import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dashtoon_machine_coding/app/models/toll_pass.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle.g.dart';

enum VehicleType { twoWheeler, fourWheeler }

@JsonSerializable()
class Vehicle {
  String registrationNumber;
  VehicleType vehicleType;
  TollPass? currentPass;

  @JsonKey(ignore: true)
  DocumentReference? reference;

  Vehicle({
    required this.registrationNumber,
    required this.vehicleType,
    this.currentPass,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);

  factory Vehicle.fromSnapshot(DocumentSnapshot snapshot) {
    final vehicle = Vehicle.fromJson(snapshot.data() as Map<String, dynamic>);
    vehicle.reference = snapshot.reference;
    vehicle.registrationNumber = snapshot.reference.id;
    return vehicle;
  }

  Map<String, dynamic> toJson() => _$VehicleToJson(this);
}
