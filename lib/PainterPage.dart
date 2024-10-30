import 'package:flutter/material.dart';
import 'package:profix_new/ArjunPainter.dart';
import 'package:profix_new/ExteriorPainting.dart';
import 'package:profix_new/InteriorPainting.dart';
import 'package:profix_new/NeetaPainter.dart';
import 'package:profix_new/RajeshPainter.dart';
import 'package:profix_new/WallpaperInstallation.dart';

void main() => runApp(const PainterPageApp());

class PainterPageApp extends StatelessWidget {
  const PainterPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PainterPage(),
    );
  }
}

class PainterPage extends StatelessWidget {
  const PainterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Painter Services'),
        backgroundColor: const Color.fromARGB(255, 213, 237, 249),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Available Services',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 122, 165, 160)),
              ),
              const SizedBox(height: 10),
              ServiceTile(
                icon: Icons.palette,
                service: 'Interior Painting',
                description: 'Paint walls and ceilings inside the home',
                price: 'Rs. 1500/hr',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InteriorPaintingPage()));
                },
              ),
              ServiceTile(
                icon: Icons.home,
                service: 'Exterior Painting',
                description: 'Paint the outside of buildings',
                price: 'Rs. 2000/hr',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExteriorPaintingPage()));
                },
              ),
              ServiceTile(
                icon: Icons.wallpaper,
                service: 'Wallpaper Installation',
                description: 'Install and remove wallpapers',
                price: 'Rs. 1200/hr',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const WallpaperInstallationPage()));
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Top Painters',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 122, 165, 160)),
              ),
              ProfessionalProfileTile(
                name: 'Arun Pandey',
                experience: '9 years of experience',
                rating: 4.8,
                imagePath: 'assets/ArjunPainter.PNG',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ArjunPainterPage()));
                },
              ),
              ProfessionalProfileTile(
                name: 'Neeta Singh',
                experience: '6 years of experience',
                rating: 4.7,
                imagePath: 'assets/NeetaPainter.PNG',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NeetaPainterPage()));
                },
              ),
              ProfessionalProfileTile(
                name: 'Rajesh Gurung',
                experience: '7 years of experience',
                rating: 4.6,
                imagePath: 'assets/RajeshPainter.PNG',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RajeshPainterPage()));
                },
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
  final VoidCallback onTap;

  const ServiceTile({
    super.key,
    required this.icon,
    required this.service,
    required this.description,
    required this.price,
    required this.onTap,
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
        onTap: onTap,
      ),
    );
  }
}

class ProfessionalProfileTile extends StatelessWidget {
  final String name;
  final String experience;
  final double rating;
  final String imagePath;
  final VoidCallback onTap;

  const ProfessionalProfileTile({
    super.key,
    required this.name,
    required this.experience,
    required this.rating,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
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
        onTap: onTap,
      ),
    );
  }
}
