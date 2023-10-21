import 'package:dashtoon_machine_coding/app/data/mock_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../models/toll.dart';
import '../../../models/toll_pass.dart';
import '../controllers/home_controller.dart';
import 'components/passcard.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Enter Vehicle Registration Number:'),
              TextField(
                controller: controller.registrationNumberController,
                decoration: const InputDecoration(
                  hintText: 'e.g., KA01AB1234',
                ),
              ),
              const SizedBox(height: 16.0),
              const Text('Select Toll Booth:'),
              DropdownButton<String>(
                value: controller.selectedTollBooth.value,
                onChanged: (String? newValue) {
                  controller.selectedTollBooth.value = newValue!;
                },
                items: tollList.map<DropdownMenuItem<String>>((Toll toll) {
                  return DropdownMenuItem<String>(
                    value: toll.id,
                    child: Text(toll.name),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  final vehicleRegistrationNumber =
                      controller.registrationNumberController.text;
                  final tollId = controller.selectedTollBooth;
                  _processToll(vehicleRegistrationNumber, tollId.value);
                },
                child: const Text('Process Toll'),
              ),
              if (controller.isUserPassNotValid.value)
                ...List.generate(controller.availablePasses.length, (index) {
                  TollPass pass = controller.availablePasses[index];
                  return PassCard(pass: pass);
                }),
            ],
          ),
        ),
      );
    });
  }

  void _processToll(String vehicleRegistrationNumber, String tollId) async {
    bool isValid = await controller.processTollForVehicle(
        vehicleRegistrationNumber, tollId);
    if (!isValid) {
      controller.isUserPassNotValid.value = true;
    }
  }
}
