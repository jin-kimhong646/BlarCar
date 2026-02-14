import 'package:blahblah/model/ride/locations.dart';
import 'package:blahblah/model/ride_pref/ride_pref.dart';
import 'package:blahblah/ui/screens/ride_pref/widgets/ride_prefs_input.dart';
import 'package:blahblah/ui/widgets/actions/bla_Button.dart';
import 'package:blahblah/ui/widgets/display/bla_divider.dart';
import 'package:blahblah/utils/date_time_utils.dart';
import 'package:flutter/material.dart';

class RidePrefsForm extends StatefulWidget {
  const RidePrefsForm({super.key, this.initRidePref});

  final RidePref? initRidePref;

  @override
  State<RidePrefsForm> createState() => _RidePrefsFormState();
}

class _RidePrefsFormState extends State<RidePrefsForm> {
  Location? departure;
  late DateTime departureDate;
  Location? arrival;
  late int seatRequested;

  @override
  void initState() {
    super.initState();
    if (widget.initRidePref != null) {
      departure = widget.initRidePref!.departure;
      arrival = widget.initRidePref!.arrival;
      departureDate = widget.initRidePref!.departureDate;
      seatRequested = widget.initRidePref!.requestedSeats;
    } else {
      departure = null;
      arrival = null;
      departureDate = DateTime.now();
      seatRequested = 1;
    }
  }

  void onDeparturePressed() async {}

  void onArrivalPressed() async {}

  void onSubmit() {
    if (departure != null && arrival != null) {
      //go to available result
    }
  }

  void onSwappingLocationPressed() {
    setState(() {
      if (arrival != null || departure != null) {
        final temp = departure;
        departure = arrival;
        arrival = temp;
      }
    });
  }

  String get departureLabel =>
      departure != null ? departure!.name : "Leaving from";
  String get arrivalLabel => arrival != null ? arrival!.name : "Going to";

  bool get showDeparturePLaceHolder => departure == null;
  bool get showArrivalPLaceHolder => arrival == null;

  String get dateLabel => DateTimeUtils.formatDateTime(departureDate);
  String get numberLabel => seatRequested.toString();

  bool get switchVisible => arrival != null && departure != null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          RidePrefsInput(
            icon: Icons.circle_outlined,
            text: departureLabel,
            onSelect: onDeparturePressed,
            rightIcon: switchVisible ? Icons.swap_vert : null,
            onRightIconClick: onSwappingLocationPressed,
            isPlaceHolder: showDeparturePLaceHolder,
          ),
          BlaDivider(),

          RidePrefsInput(
            icon: Icons.circle_outlined,
            text: arrivalLabel,
            onSelect: onArrivalPressed,
            isPlaceHolder: showArrivalPLaceHolder,
          ),
          BlaDivider(),
          RidePrefsInput(
            icon: Icons.calendar_month,
            text: dateLabel,
            onSelect: () {},
            isPlaceHolder: false,
          ),
          BlaDivider(),
          RidePrefsInput(
            icon: Icons.person_2_outlined,
            text: numberLabel,
            onSelect: () {},
            isPlaceHolder: false,
          ),

          BlaButton(text: "Search", onButtonTap: onSubmit, isPrimary: true),
        ],
      ),
    );
  }
}
