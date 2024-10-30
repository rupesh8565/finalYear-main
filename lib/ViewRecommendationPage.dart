import 'package:flutter/material.dart';

class ViewRecommendationPage extends StatelessWidget {
  const ViewRecommendationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCDE8E5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFCDE8E5),
        title: const Text('Recommended Providers'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xFFCDE8E5),
            ),
          ),
          Expanded(
            flex: 12,
            child: ClipPath(
              clipper: MyClipper(),
              child: Container(
                color: const Color(0xFFEEF7FF),
                child: ListView(
                  padding: const EdgeInsets.all(16.0),
                  children: const [
                    SizedBox(height: 10),
                    RecommendedItem(
                      title: 'Home Cleaning',
                      by: 'Rayan Shrestha',
                      price: 'Rs.2400/hr',
                      discount: 'Off 30%',
                      rating: '4.5',
                      imagePath: 'assets/CleanerRayan.PNG',
                    ),
                    RecommendedItem(
                      title: 'Kitchen Cleaning',
                      by: 'Emran Emon',
                      price: 'Rs.2000/hr',
                      discount: 'Off 25%',
                      rating: '4.5',
                      imagePath: 'assets/KitchenEmran.PNG',
                    ),
                    RecommendedItem(
                      title: 'Catering Service',
                      by: 'John Magar',
                      price: 'Rs. 15,000/event',
                      discount: 'off 10%',
                      rating: '4.5',
                      imagePath: 'assets/CateringJohn.PNG',
                    ),
                    RecommendedItem(
                      title: 'Photography Service',
                      by: 'Alice Shrestha',
                      price: 'Rs. 30,000/event',
                      discount: 'off 10%',
                      rating: '4.5',
                      imagePath: 'assets/PhotographerAlice.PNG',
                    ),
                    RecommendedItem(
                      title: 'Office Cleaning',
                      by: 'Micheal Kumar',
                      price: 'Rs. 35,000/hr',
                      discount: 'off 20%',
                      rating: '4.6',
                      imagePath: 'assets/OfficeMicheal.PNG',
                    ),
                    RecommendedItem(
                      title: 'Leak Repairing',
                      by: 'Grace Magar',
                      price: 'Rs. 5,000/hr',
                      discount: 'off 10%',
                      rating: '4.5',
                      imagePath: 'assets/LeakGrace.PNG',
                    ),
                    RecommendedItem(
                      title: 'Bathroom Cleaning',
                      by: 'Gracy Magar',
                      price: 'Rs. 5,000/hr',
                      discount: 'off 10%',
                      rating: '4.5',
                      imagePath: 'assets/BathroomGracy.PNG',
                    ),
                    RecommendedItem(
                      title: 'Clog Fixing',
                      by: 'Niraj kuma',
                      price: 'Rs. 5,000/hr',
                      discount: 'off 10%',
                      rating: '4.5',
                      imagePath: 'assets/ClogNiraj.PNG',
                    ),
                    RecommendedItem(
                      title: 'Gas Line Plumber',
                      by: 'Raju Kumar',
                      price: 'Rs. 5,000/hr',
                      discount: 'off 10%',
                      rating: '4.5',
                      imagePath: 'assets/GasRaju.PNG',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 40); // Corrected to match the bottom edge of the clip path
    path.quadraticBezierTo(0, 0, 70, 0); // Rounded top left corner
    path.lineTo(size.width, 0); // Line to the top right corner
    path.lineTo(size.width, size.height); // Line to the bottom right corner
    path.lineTo(0, size.height); // Line to the bottom left corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class RecommendedItem extends StatelessWidget {
  final String title;
  final String by;
  final String price;
  final String discount;
  final String rating;
  final String imagePath;

  const RecommendedItem({super.key, 
    required this.title,
    required this.by,
    required this.price,
    required this.discount,
    required this.rating,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image widget to display the photo
            Flexible(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imagePath,
                  width: 60,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            // Details column
            Flexible(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('By $by'),
                  Text(price),
                  Text(discount),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow, size: 16),
                      Text(rating),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
