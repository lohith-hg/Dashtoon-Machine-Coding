import 'package:flutter/material.dart';

import '../../../../models/toll_pass.dart';

class PassCard extends StatelessWidget {
  final TollPass pass;

  const PassCard({required this.pass});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Pass Type: ${pass.type}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text('Description: ${pass.description}'),
            const SizedBox(height: 8.0),
            Text('Date Issued: ${pass.dateIssued.toLocal()}'),
            const SizedBox(height: 8.0),
            Text('Validity Period: ${pass.validityPeriod.inDays} days'),
            const SizedBox(height: 8.0),
            Text('Vehicle Number: ${pass.vehicleNumber ?? 'N/A'}'),
            const SizedBox(height: 8.0),
            const Text('Prices:'),
            Column(
              children: pass.prices.entries
                  .map((entry) => Text('${entry.key}: ${entry.value}'))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
