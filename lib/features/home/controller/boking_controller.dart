import 'package:get/get.dart';

class BookingController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var passengerCount = 1.obs;
  var option = <String>['Andasibe', 'Canal de Pangalane', 'Ankanin\'ny Nofy', 'Manambato', 'Foulpointe', 'Sainte Marie'].obs;
  var selectedOption = <String>[].obs;

  void addOption(String option) {
    selectedOption.add(option);
  }

  void removeOption(String option) {
    selectedOption.remove(option);
  }

  void clearOptions() {
    selectedOption.clear();
  }
}
