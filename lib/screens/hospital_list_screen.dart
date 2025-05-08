import 'package:flutter/material.dart';
import 'package:hospital_management/models/hospital.dart';
import 'package:hospital_management/screens/hospital_detail_screen.dart';
import 'package:hospital_management/widgets/hospital_card.dart';

class HospitalListScreen extends StatelessWidget {
  const HospitalListScreen({super.key});

  // Déplacer la liste hors du build et rendre le constructeur const
  static const List<Hospital> hospitals = [
    Hospital(
      id: '1',
      name: 'Hôpital Central',
      address: '123 Rue Principale, Ville',
      phone: '0123456789',
      imageUrl: 'assets/hospital1.png',
      bedsAvailable: 45,
    ),
    Hospital(
      id: '2',
      name: 'Clinique du Nord',
      address: '456 Avenue Nord, Ville',
      phone: '0987654321',
      imageUrl: 'assets/hospital2.png',
      bedsAvailable: 22,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des Hôpitaux'),
      ),
      body: ListView.builder(
        itemCount: hospitals.length,
        itemBuilder: (context, index) {
          return HospitalCard(
            hospital: hospitals[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HospitalDetailScreen(hospital: hospitals[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}