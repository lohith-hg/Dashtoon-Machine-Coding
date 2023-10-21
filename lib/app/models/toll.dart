import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'toll.g.dart';

@JsonSerializable()
class Toll {
  String id;
  final String name;
  final String location;
  List<TollBooth> tollBooths;

  @JsonKey(ignore: true)
  DocumentReference? reference;

  Toll({
    required this.id,
    required this.name,
    required this.location,
    required this.tollBooths,
  });

  factory Toll.fromJson(Map<String, dynamic> json) => _$TollFromJson(json);

  factory Toll.fromSnapshot(DocumentSnapshot snapshot) {
    final toll = Toll.fromJson(snapshot.data() as Map<String, dynamic>);
    toll.reference = snapshot.reference;
    toll.id = snapshot.reference.id;
    return toll;
  }

  Map<String, dynamic> toJson() => _$TollToJson(this);
}

@JsonSerializable()
class TollBooth {
   String id;
   String name;
  int vehiclesProcessed;
  double tollChargesCollected;

  @JsonKey(ignore: true)
  DocumentReference? reference;

  TollBooth({
    required this.id,
    required this.name,
    this.vehiclesProcessed = 0,
    this.tollChargesCollected = 0.0,
  });

   factory TollBooth.fromJson(Map<String, dynamic> json) => _$TollBoothFromJson(json);

  factory TollBooth.fromSnapshot(DocumentSnapshot snapshot) {
    final tollboth = TollBooth.fromJson(snapshot.data() as Map<String, dynamic>);
    tollboth.reference = snapshot.reference;
    tollboth.id = snapshot.reference.id;
    return tollboth;
  }

  Map<String, dynamic> toJson() => _$TollBoothToJson(this);
}
