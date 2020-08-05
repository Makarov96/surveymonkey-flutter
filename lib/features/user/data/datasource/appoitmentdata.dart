import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

class AppoitmentCites {
  final String imageUrl;
  final String title;
  final String description;
  final Color color;

  AppoitmentCites(
      {@required this.imageUrl,
      @required this.title,
      this.description,
      this.color});
}

List<AppoitmentCites> listappoitmentdata = [
  AppoitmentCites(
      imageUrl: 'assets/grooming.jpg',
      title: 'Servicio para perros \npequeños',
      description:
          'Este servicio es ideal para perritos de tamaño pequeño con caracteristicas similares a las razas como chihuahua',
      color: Color(0xFFFFC2AD)),
  AppoitmentCites(
      imageUrl: 'assets/grooming2.jpg',
      title: 'Servicio para perros \nmedianos',
      description:
          'Este servicio es ideal para perritos de tamaño mediano con caracteristicas similares a las razas como Beagle',
      color: Color(0xFF3B60CF)),
  AppoitmentCites(
      imageUrl: 'assets/grooming3.jpg',
      title: 'Servicio para perros \ngrandes',
      description:
          'Este servicio es ideal para perritos de tamaño mediano con caracteristicas similares a las razas como San bernardo',
      color: Color(0xFFFFD5D6))
];
