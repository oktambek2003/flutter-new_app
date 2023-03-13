import '../data.dart';
import '../models/food.dart';

List<Car> getAllFoods() {
  List<Car> ls = [];
  for (Map<String, String> mp in allCars.values) {
    ls.add(
      Car(
        images:mp["images"]!,
          speed: mp["speed"]!,
          load: mp["load"]!,
          engine: mp['engine']!,
          NumberOfSeats: mp['NumberOfSeats']!),
          
    );
  }
  return ls;
}
