import 'package:blahblah/model/ride/locations.dart';
import 'package:blahblah/model/ride_pref/ride_pref.dart';
import 'package:blahblah/ui/screens/ride_pref/ride_prefs_screen.dart';
import 'package:blahblah/ui/screens/ride_pref/widgets/ride_prefs_form.dart';
import 'package:blahblah/ui/screens/ride_pref/widgets/ride_prefs_input.dart';
import 'package:blahblah/ui/theme/theme.dart';
import 'package:blahblah/ui/widgets/actions/bla_Button.dart';
import 'package:flutter/material.dart';

final sampleRidePref = RidePref(
  departure: Location(name: "Paris", country: Country.france),
  arrival: Location(name: "London", country: Country.uk),
  departureDate: DateTime.now(),
  requestedSeats: 2,
);

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: RidePrefsScreen()),
    );
  }
}
