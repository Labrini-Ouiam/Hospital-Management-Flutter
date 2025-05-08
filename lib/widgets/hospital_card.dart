import 'package:flutter/material.dart';
import 'package:hospital_management/models/hospital.dart';

class HospitalCard extends StatelessWidget {
  final Hospital hospital;
  final VoidCallback onTap;

  const HospitalCard({
    super.key,
    required this.hospital,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Image.asset(hospital.imageUrl, width: 80, height: 80),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hospital.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      hospital.address,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Lits disponibles: ${hospital.bedsAvailable}',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}