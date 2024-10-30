import 'package:flutter/material.dart';

void main() => runApp(const CarpenterPageApp());

class CarpenterPageApp extends StatelessWidget {
  const CarpenterPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarpenterPage(),
    );
  }
}

class CarpenterPage extends StatelessWidget {
  const CarpenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carpenter Services'),
        backgroundColor: const Color.fromARGB(255, 213, 237, 249),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Available Services',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 122, 165, 160)),
              ),
              SizedBox(height: 10),
              ServiceTile(
                icon: Icons.build,
                service: 'Furniture Repair',
                description: 'Repair and restoration of furniture',
                price: 'Rs. 1000/hr',
              ),
              ServiceTile(
                icon: Icons.chair,
                service: 'Custom Furniture',
                description: 'Design and build custom furniture',
                price: 'Rs. 2000/hr',
              ),
              ServiceTile(
                icon: Icons.home,
                service: 'Cabinet Installation',
                description: 'Install kitchen and bathroom cabinets',
                price: 'Rs. 1500/hr',
              ),
              SizedBox(height: 20),
              Text(
                'Top Carpenters',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 122, 165, 160)),
              ),
              ProfessionalProfileTile(
                name: 'Deepak Kumar',
                experience: '12 years of experience',
                rating: 4.9,
              ),
              ProfessionalProfileTile(
                name: 'Mina Sharma',
                experience: '8 years of experience',
                rating: 4.8,
              ),
              ProfessionalProfileTile(
                name: 'Ravi Patel',
                experience: '10 years of experience',
                rating: 4.7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceTile extends StatelessWidget {
  final IconData icon;
  final String service;
  final String description;
  final String price;

  const ServiceTile({super.key, 
    required this.icon,
    required this.service,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          icon,
          size: 40,
          color: const Color.fromARGB(255, 122, 165, 160),
        ),
        title: Text(
          service,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        trailing: Text(price),
      ),
    );
  }
}

class ProfessionalProfileTile extends StatelessWidget {
  final String name;
  final String experience;
  final double rating;
  //final String imagePath;

  const ProfessionalProfileTile({super.key, 
    required this.name,
    required this.experience,
    required this.rating,
    //required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(
            //backgroundImage: AssetImage(imagePath),
            ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(experience),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.star, color: Colors.yellow[700]),
            Text(
              rating.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
