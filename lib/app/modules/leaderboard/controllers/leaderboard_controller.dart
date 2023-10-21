import 'package:get/get.dart';

import '../../../models/toll.dart';

class LeaderboardController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  List<Toll> createLeaderboard(List<Toll> tolls) {
    List<Toll> leaderboard = tolls;

    leaderboard.sort((a, b) {
      int aTotalProcessed =
          a.tollBooths.fold(0, (prev, booth) => prev + booth.vehiclesProcessed);
      int bTotalProcessed =
          b.tollBooths.fold(0, (prev, booth) => prev + booth.vehiclesProcessed);

      if (aTotalProcessed != bTotalProcessed) {
        return bTotalProcessed.compareTo(aTotalProcessed);
      } else {
        double aTotalCollected = a.tollBooths
            .fold(0.0, (prev, booth) => prev + booth.tollChargesCollected);
        double bTotalCollected = b.tollBooths
            .fold(0.0, (prev, booth) => prev + booth.tollChargesCollected);
        return bTotalCollected.compareTo(aTotalCollected);
      }
    });

    return leaderboard;
  }
}
