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
      Vehicle? vehicle = vehicleList.firstWhere(
        (v) => v.registrationNumber == vehicleRegistrationNumber,
      );

      Toll? toll = tollList.firstWhere(
        (t) => t.id == tollId,
      );

      final currentPass = vehicle.currentPass;

      if (currentPass != null) {
        final passType = currentPass.type;
        final passTollId = currentPass.tollId;

        if (passTollId == tollId) {
          final passExpiryDate =
              currentPass.dateIssued.add(currentPass.validityPeriod);
          final currentDate = DateTime.now();

          if (currentDate.isBefore(passExpiryDate)) {
            return true;
          }
        }
      }

      return false;
    } catch (e) {
      return false;
    }
  }

}
