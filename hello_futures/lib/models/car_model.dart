import 'dart:ui' show Color;

class CarModel {
  final String carId;
  final Color color;
  final double priceInUsd;
  const CarModel({
    required this.carId,
    required this.color,
    required this.priceInUsd,
  });
}
