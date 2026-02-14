import 'package:blahblah/model/ride/locations.dart';
import 'package:blahblah/model/ride_pref/ride_pref.dart';
import 'package:blahblah/ui/screens/location_picker/location_picker_screen.dart';
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
      body: SafeArea(child: LocationSearchScreen()),
    );
  }
}
