import '../data/dummy_data.dart';
import '../model/ride/locations.dart';
import '../model/ride/ride.dart';

////
///   This service handles:
///   - The list of available rides
///
class RidesService {
  static List<Ride> availableRides = fakeRides; // TODO for now fake data

  static List<Ride> filterByDeparture(Location departure) {
    availableRides.where((e) => e.departureLocation == departure);
    return availableRides ;
  }
    static List<Ride> filterBySeatRequested(Location seatRequested) {
      availableRides.where((e) => e.availableSeats >= seatRequested);
    return availableRides ;
  }

    static List<Ride> filterBy({Location? departure, int? seatRequested}) {
     if (departure!= null && seatRequested == null ) {
      availableRides.where((e) =>  e.availableSeats == departure).toList(); 
     }


    return [];
  }
}