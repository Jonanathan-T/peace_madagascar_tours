import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peaces_madagascar_tours/core/utils/extensions/context_extensions.dart';
import 'package:peaces_madagascar_tours/core/utils/extensions/date_time_extension.dart';

import '../../../../core/themes/app_styles.dart';
import '../../controller/boking_controller.dart';
import '../widgets/widgets.dart';

class BookingSection extends StatefulWidget {
  final Size size;

  const BookingSection({super.key, required this.size});

  @override
  State<BookingSection> createState() => _BookingSectionState();
}

class _BookingSectionState extends State<BookingSection> {
  final BookingController _bookingController = Get.put(BookingController());
  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2077),
    );
    if (picked != null) {
      _bookingController.selectedDate.value = picked;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * .75,
      constraints: BoxConstraints(maxWidth: widget.size.width * 0.8),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: (context.screenWidth >= 1000)
            ? DecorationImage(
                image: AssetImage("assets/images/IMG-20241113-WA0011.jpg"),
                alignment: Alignment.centerRight,
              )
            : null,
      ),
      child: Container(
        constraints: BoxConstraints(minWidth: 430.0),
        margin: (context.screenWidth >= 1000) ? EdgeInsets.only(right: widget.size.width * .05) : null,
        padding: EdgeInsets.all(25.0).copyWith(right: (context.screenWidth >= 1000) ? widget.size.width * .4 : null),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(15.0),
            right: (context.screenWidth <= 1000) ? Radius.circular(15.0) : Radius.zero,
          ),
          gradient: LinearGradient(
            end: Alignment.centerRight,
            colors: [
              Color(0xFF113275),
              Color(0xFF3C82DF),
              if (context.screenWidth >= 1000) Color(0x003C82DF),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10.0,
          children: [
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/arrow.png",
                    filterQuality: FilterQuality.high,
                  ),
                  const SizedBox(width: 10.0),
                  const Text(
                    "RESERVATION",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Transform.flip(
                    flipX: true,
                    child: Image.asset(
                      "assets/arrow.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: AutoSizeText(
                "Peace Madagascar Tours\nvoyager avec-nous",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 43.0,
                ),
              ),
            ),
            Flexible(
              child: OutlinedButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: AlertDialog(
                          alignment: Alignment.center,
                          title: const Text(
                            "\"Explorez vos destinations de rêve 🌍✨\"",
                            textAlign: TextAlign.center,
                          ),
                          content: const ChipsChoiceWidget(),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Annuler"),
                            ),
                            FilledButton(
                              onPressed: () => Navigator.pop(context),
                              style: FilledButton.styleFrom(
                                backgroundColor: AppStyles.accentColor,
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              child: const Text("Valider"),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.white,
                  ),
                  iconColor: AppStyles.accentColor,
                  foregroundColor: Colors.white,
                ),
                label: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Vos Destination"),
                ),
                icon: const Icon(Icons.flight),
              ),
            ),
            (context.screenWidth < 600)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    spacing: 10.0,
                    children: [
                      BookingButtonWidget(
                          title: "Date",
                          child: InkWell(
                            onTap: () => _selectDate(context),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              spacing: 10.0,
                              children: [
                                Center(
                                    child: Icon(
                                  Icons.calendar_month,
                                  color: AppStyles.accentColor,
                                )),
                                Center(
                                  child: Obx(() => AutoSizeText(
                                        _bookingController.selectedDate.value.formattedDDMMYYYY,
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          )),
                      const BookingButtonWidget(title: "Passager", child: PassengerCountWidget()),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 10.0,
                    children: [
                      Expanded(
                        child: BookingButtonWidget(
                            title: "Date",
                            child: InkWell(
                              onTap: () => _selectDate(context),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                spacing: 10.0,
                                children: [
                                  Center(child: Icon(Icons.calendar_month, color: AppStyles.accentColor)),
                                  Center(
                                    child: Obx(() => AutoSizeText(
                                          _bookingController.selectedDate.value.formattedDDMMYYYY,
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Expanded(child: const BookingButtonWidget(title: "Passager", child: PassengerCountWidget())),
                    ],
                  ),
            const SizedBox(height: 10.0),
            Flexible(
              child: FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: AppStyles.accentColor,
                  textStyle: const TextStyle(fontSize: 16.0, letterSpacing: 1.1),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text("Reserver"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
