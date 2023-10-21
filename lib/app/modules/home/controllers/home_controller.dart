import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../data/mock_data.dart';
import '../../../models/toll.dart';
import '../../../models/toll_pass.dart';
import '../../../models/vehicle.dart';

class HomeController extends GetxController {
  final TextEditingController registrationNumberController =
      TextEditingController();
  final selectedTollBooth = 'Toll1'.obs;
  final selectedPass = ''.obs;
  final isUserPassNotValid = false.obs;

  List<TollPass> availablePasses = [singlePass, returnPass, sevenDayPass];

  @override
  void onInit() async {
    super.onInit();
  }

  Future<bool> processTollForVehicle(
      String vehicleRegistrationNumber, String tollId) async {
    try {
      print("calleddddddddddddddddddddd");
      Vehicle? vehicle = vehicleList.firstWhere(
        (v) => v.registrationNumber == vehicleRegistrationNumber,
      );
      print(vehicle);
      Toll? toll = tollList.firstWhere(
        (t) => t.id == tollId,
      );

      print(vehicle);
      print(toll);
      final currentPass = vehicle.currentPass;

      if (currentPass != null) {
        final passType = currentPass.type;
        final passExpiryDate =
            currentPass.dateIssued.add(currentPass.validityPeriod);
        final currentDate = DateTime.now();
        print(passExpiryDate);
        print(passExpiryDate);

        if (currentDate.isBefore(passExpiryDate)) {
          print("pass validddddd");
          return true;
        }
      }
      print("pass Invalid");
      return false;
    } catch (e) {
      return false;
    }
  }
}
