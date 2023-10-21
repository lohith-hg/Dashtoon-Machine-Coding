import '../models/toll.dart';
import '../models/toll_pass.dart';
import '../models/vehicle.dart';

TollBooth tollBooth1 = TollBooth(
  id: 'tb001',
  name: 'Delhi',
  vehiclesProcessed: 500,
  tollChargesCollected: 2500.0,
);

TollBooth tollBooth2 = TollBooth(
  id: 'tb002',
  name: 'Delhi',
  vehiclesProcessed: 300,
  tollChargesCollected: 1500.0,
);

TollBooth tollBooth3 = TollBooth(
  id: 'tb003',
  name: 'Bangalore',
  vehiclesProcessed: 450,
  tollChargesCollected: 2250.0,
);

TollBooth tollBooth4 = TollBooth(
  id: 'tb004',
  name: 'Bangalore',
  vehiclesProcessed: 350,
  tollChargesCollected: 1750.0,
);

Toll toll1 = Toll(
  id: 'toll001',
  name: 'Delhi',
  location: 'Delhi',
  tollBooths: [tollBooth1, tollBooth2],
);

Toll toll2 = Toll(
  id: 'toll002',
  name: 'Bangalore',
  location: 'Bangalore',
  tollBooths: [tollBooth3, tollBooth4],
);

///vehicle
Vehicle vehicle1 = Vehicle(
  registrationNumber: 'KA01AB1234',
  vehicleType: VehicleType.twoWheeler,
  currentPass: null, // No active pass
);

Vehicle vehicle2 = Vehicle(
  registrationNumber: 'TN22CD5678',
  vehicleType: VehicleType.fourWheeler,
  currentPass: TollPass(
    id: 'pass001',
    type: PassType.singlePass,
    description: 'One-time use',
    dateIssued: DateTime(2023, 10, 1),
    validityPeriod: const Duration(days: 1),
    prices: {
      VehicleType.twoWheeler: 30.0,
      VehicleType.fourWheeler: 60.0,
    },
    vehicleNumber: 'KA01AB1234',
  ),
);

Vehicle vehicle3 = Vehicle(
  registrationNumber: 'MH07EF9012',
  vehicleType: VehicleType.twoWheeler,
  currentPass: TollPass(
    id: 'pass001',
    type: PassType.singlePass,
    description: 'One-time use',
    dateIssued: DateTime(2023, 10, 1),
    validityPeriod: const Duration(days: 1),
    prices: {
      VehicleType.twoWheeler: 30.0,
      VehicleType.fourWheeler: 60.0,
    },
    vehicleNumber: 'KA01AB1234',
  ),
);

//tollpass

TollPass singlePass = TollPass(
  id: 'pass001',
  type: PassType.singlePass,
  description: 'One-time use',
  dateIssued: DateTime(2023, 10, 1),
  validityPeriod: Duration(days: 1),
  prices: {
    VehicleType.twoWheeler: 30.0,
    VehicleType.fourWheeler: 60.0,
  },
  vehicleNumber: 'KA01AB1234',
);

TollPass returnPass = TollPass(
  id: 'pass002',
  type: PassType.returnPass,
  description: 'Valid for current trip and one return trip within 24 hours',
  dateIssued: DateTime(2023, 9, 15),
  validityPeriod: Duration(days: 1),
  prices: {
    VehicleType.twoWheeler: 50.0,
    VehicleType.fourWheeler: 90.0,
  },
  vehicleNumber: 'TN22CD5678',
);

TollPass sevenDayPass = TollPass(
  id: 'pass003',
  type: PassType.sevenDayPass,
  description: 'Unlimited passages in either direction for 7 days',
  dateIssued: DateTime(2023, 9, 1),
  validityPeriod: Duration(days: 7),
  prices: {
    VehicleType.twoWheeler: 150.0,
    VehicleType.fourWheeler: 270.0,
  },
  vehicleNumber: 'MH07EF9012',
);

List<Vehicle> vehicleList = [
  Vehicle(
    registrationNumber: 'KA01AB1234',
    vehicleType: VehicleType.twoWheeler,
    currentPass: null, // No active pass
  ),
  Vehicle(
    registrationNumber: 'TN22CD5678',
    vehicleType: VehicleType.fourWheeler,
    currentPass: TollPass(
      id: 'pass001',
      type: PassType.singlePass,
      description: 'One-time use',
      dateIssued: DateTime(2023, 10, 1),
      validityPeriod: const Duration(days: 1),
      prices: {
        VehicleType.twoWheeler: 30.0,
        VehicleType.fourWheeler: 60.0,
      },
      vehicleNumber: 'KA01AB1234',
    ),
  ),
  Vehicle(
    registrationNumber: 'MH07EF9012',
    vehicleType: VehicleType.twoWheeler,
    currentPass: TollPass(
      id: 'pass001',
      type: PassType.singlePass,
      description: 'One-time use',
      dateIssued: DateTime(2023, 10, 1),
      validityPeriod: const Duration(days: 1),
      prices: {
        VehicleType.twoWheeler: 30.0,
        VehicleType.fourWheeler: 60.0,
      },
      vehicleNumber: 'KA01AB1234',
    ),
  ),
];

List<Toll> tollList = [
  Toll(
    id: 'toll0011',
    name: 'Delhi',
    location: 'Delhi',
    tollBooths: [tollBooth1, tollBooth2],
  ),
  Toll(
    id: 'toll0021',
    name: 'Bangalore',
    location: 'Bangalore',
    tollBooths: [tollBooth3, tollBooth4],
  ),
];
