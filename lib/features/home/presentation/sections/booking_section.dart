import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';
import '../widgets/widgets.dart';

class BookingSection extends StatefulWidget {
  final Size size;

  const BookingSection({super.key, required this.size});

  @override
  State<BookingSection> createState() => _BookingSectionState();
}

class _BookingSectionState extends State<BookingSection> {
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2077),
    );
    if (picked != null) setState(() => selectedDate = picked);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * .75,
      width: widget.size.width * 0.8,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: AssetImage("assets/images/IMG-20241113-WA0011.jpg"),
          alignment: Alignment.centerRight,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(right: widget.size.width * .05),
        padding: EdgeInsets.all(25.0).copyWith(right: widget.size.width * .4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0),
          ),
          gradient: LinearGradient(
            end: Alignment.centerRight,
            colors: [
              Color(0xFF113275),
              Color(0xFF3C82DF),
              Color(0x003C82DF),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 15.0,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 10.0,
              children: [
                Image.asset(
                  "assets/arrow.png",
                  filterQuality: FilterQuality.high,
                ),
                Text(
                  "RESERVATION",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Transform.flip(
                  flipX: true,
                  child: Image.asset(
                    "assets/arrow.png",
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ],
            ),
            Text(
              "Peace Madagascar Tours\nvoyager avec-nous",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 43.0,
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: AlertDialog(
                        alignment: Alignment.center,
                        title: Text(
                          "\"Explorez vos destinations de rêve 🌍✨\"",
                          textAlign: TextAlign.center,
                        ),
                        content: ChipsChoiceWidget(),
                      ),
                    );
                  },
                );
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.white,
                ),
                iconColor: AppStyles.accentColor,
                foregroundColor: Colors.white,
              ),
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Vos Destination"),
              ),
              icon: Icon(Icons.flight),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 20.0,
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _selectDate(context),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                      iconColor: AppStyles.accentColor,
                      foregroundColor: Colors.white,
                    ),
                    label: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Date: ${dateFormater(selectedDate ?? DateTime.now())}",
                      ),
                    ),
                    icon: Icon(Icons.calendar_month),
                  ),
                ),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                      iconColor: AppStyles.accentColor,
                      foregroundColor: Colors.white,
                    ),
                    label: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Passager"),
                    ),
                    icon: Icon(Icons.people),
                  ),
                ),
              ],
            ),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                backgroundColor: AppStyles.accentColor,
                textStyle: TextStyle(fontSize: 16.0, letterSpacing: 1.1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text("Reserver"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String dateFormater(DateTime dateTime) {
  return "${dateTime.day}/${dateTime.month}/${dateTime.year}";
}
