import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dashtoon_machine_coding/app/models/vehicle.dart';
import 'package:json_annotation/json_annotation.dart';

part 'toll_pass.g.dart';

enum PassType { singlePass, returnPass, sevenDayPass }

@JsonSerializable()
class TollPass {
  String id;
  String tollId;
  PassType type;
  String description;
  DateTime dateIssued;
  Duration validityPeriod;
  Map<VehicleType, double> prices;
  String? vehicleNumber;

  @JsonKey(ignore: true)
  DocumentReference? reference;

  TollPass({
    required this.id,
    required this.tollId,
    required this.type,
    required this.description,
    required this.validityPeriod,
    required this.dateIssued,
    required this.prices,
    this.vehicleNumber,
  });

  factory TollPass.fromJson(Map<String, dynamic> json) =>
      _$TollPassFromJson(json);

  factory TollPass.fromSnapshot(DocumentSnapshot snapshot) {
    final tollpass = TollPass.fromJson(snapshot.data() as Map<String, dynamic>);
    tollpass.reference = snapshot.reference;
    tollpass.id = snapshot.reference.id;
    return tollpass;
  }

  Map<String, dynamic> toJson() => _$TollPassToJson(this);
}
