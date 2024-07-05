import 'package:flutter/material.dart';

class ListView extends StatelessElement {
  ListView(super.widget);
  List<Map<String, String>> products = [
    {
      'name': 'Aspirina',
      'image': 'assets/images/aspirina.png',
      'subtitle': 'Alívio da dor'
    },
    {
      'name': 'Novalgina',
      'image': 'assets/images/novalgina.png',
      'subtitle': 'Alívio da dor'
    },
    {
      'name': 'Energil C',
      'image': 'assets/images/energilc.png',
      'subtitle': 'Vitamina C'
    },
    {
      'name': 'Dorflex',
      'image': 'assets/images/dorflex.png',
      'subtitle': 'Alívio da dor'
    },
    {
      'name': 'Ivermectina',
      'image': 'assets/images/ivermectina.png',
      'subtitle': 'Antiparasitário'
    },
  ];
}