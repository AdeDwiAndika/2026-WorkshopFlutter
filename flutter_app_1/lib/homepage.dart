import "package:flutter/material.dart";
import "package:carousel_slider/carousel_slider.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Testing App"),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search), 
            onPressed: () {}
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 150.0,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                    autoPlay: false,
                  ),
                  items: [
                    'assets/images/1.png',
                    'assets/images/2.png',
                    'assets/images/4.png',
                  ].map((i) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: Image.asset(i, fit: BoxFit.cover, width: double.infinity)
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 24),
                Text(
                  "Destinasi Populer",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "PlusJakartaSans"
                  ),
                ),
                SizedBox(height: 16,),
                Card.outlined(
                  elevation: 4,
                  shadowColor: const Color.fromARGB(50, 238, 238, 238),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(
                      color: const Color.fromARGB(184, 208, 208, 208),
                      width: 1
                    )
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            child: Image.asset("assets/images/3.png", fit: BoxFit.cover, width: double.infinity, height: 150),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0, top: 4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Identitas Budaya Sunda",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "PlusJakartaSans"
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Bandung, Jawa Barat",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                  fontFamily: "PlusJakartaSans"
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
