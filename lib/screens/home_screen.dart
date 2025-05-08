import 'package:flutter/material.dart';
import 'package:hospital_management/screens/hospital_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestion des Hôpitaux'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/hospital.png', height: 150),
            const SizedBox(height: 20),
            const Text(
              'Bienvenue dans le système de gestion des hôpitaux',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HospitalListScreen()),
                );
              },
              child: const Text('Voir la liste des hôpitaux'),
            ),
          ],
        ),
      ),
    );
  }
}