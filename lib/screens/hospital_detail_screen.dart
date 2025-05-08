import 'package:flutter/material.dart';
import 'package:hospital_management/models/hospital.dart';

class HospitalDetailScreen extends StatelessWidget {
  final Hospital hospital;

  const HospitalDetailScreen({super.key, required this.hospital});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hospital.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(hospital.imageUrl, height: 200, width: double.infinity, fit: BoxFit.cover),
            const SizedBox(height: 20),
            Text(
              hospital.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Adresse: ${hospital.address}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              'Téléphone: ${hospital.phone}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              'Lits disponibles: ${hospital.bedsAvailable}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action pour réserver un lit
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Réservation effectuée')),
                );
              },
              child: const Text('Réserver un lit'),
            ),
          ],
        ),
      ),
    );
  }
}