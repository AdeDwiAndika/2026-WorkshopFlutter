import "package:flutter/material.dart";
import "package:carousel_slider/carousel_slider.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final List<Map<String, String>> destinations = [
    {
      'image': 'assets/images/3.png',
      'title': 'Identitas Budaya Sunda',
      'location': 'Bandung, Jawa Barat',
    },
    {
      'image': 'assets/images/4.png',
      'title': 'Pantai Kuta',
      'location': 'Bali',
    },
    {
      'image': 'assets/images/5.png',
      'title': 'Candi Borobudur',
      'location': 'Magelang, Jawa Tengah',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar Atas
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Testing App"),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
        ],
      ),

      // Body
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Carousel Slider
              SizedBox(height: 16),
              CarouselSlider(
                options: CarouselOptions(
                  height: 150.0,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  autoPlay: true,
                ),
                items:
                    [
                      'assets/images/1.png',
                      'assets/images/2.png',
                      'assets/images/4.png',
                    ].map((i) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: SizedBox(
                          width: double.infinity,
                          height: 200,
                          child: Image.asset(
                            i,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      );
                    }).toList(),
              ),
              // Search Bar & Judul Card List
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Search Bar
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(25, 158, 158, 158),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey[600]),
                          SizedBox(width: 8),
                          Text('Search Here...'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ICON LIST

              // TEXT JUDUL CARD LIST
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Destinasi Populer",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "PlusJakartaSans",
                      ),
                    ),
                    Icon(Icons.more_horiz, color: Colors.grey[600]),
                  ],
                ),
              ),
              // CARD LIST
              SizedBox(
                height: 290,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: destinations.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: _buildDestinationCard(
                        destinations[index]['image']!,
                        destinations[index]['title']!,
                        destinations[index]['location']!,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDestinationCard(
    String imagePath,
    String title,
    String location,
  ) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(
          color: const Color.fromARGB(55, 158, 158, 158),
          width: 1,
        ),
      ),
      child: Container(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // IMAGE
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 150,
                ),
              ),
            ),
            // TEXT
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    location,
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            // BUTTON
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    // Navigasi ke halaman detail
                  },
                  child: const Text(
                    "Book Now",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
