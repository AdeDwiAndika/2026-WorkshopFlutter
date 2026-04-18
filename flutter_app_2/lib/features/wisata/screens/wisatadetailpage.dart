import 'package:flutter/material.dart';
import 'package:flutter_app_2/model/tourism_place.dart';
import 'package:flutter_app_2/core/constans/app_colors.dart';
import 'package:gap/gap.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.place});

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Wisata',
          style: TextStyle(
            color: AppColors.grey700,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: AppColors.white,
        elevation: 0.0,
        scrolledUnderElevation: 0.0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // GAMBAR
              Image.asset(
                place.imageAsset,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200.0,
              ),
              // NAMA TEMPAT WISATA
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  place.name,
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // ICON LOKASI DAN WAKTU BUKA
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                child: Column(
                  children: <Widget>[
                    // UNTUK ICON LOKASI
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // ICON
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryLight,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.location_on,
                            color: AppColors.primary,
                            size: 16.0,
                          ),
                        ),
                        Gap(8.0),
                        // TEXT
                        Text(
                          place.location,
                          style: TextStyle(
                            color: AppColors.grey700,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    Gap(8.0),
                    // UNTUK ICON WAKTU BUKA
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // ICON
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryLight,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.calendar_month,
                            color: AppColors.primary,
                            size: 16.0,
                          ),
                        ),
                        Gap(8.0),
                        // TEXT
                        Text(
                          place.waktuBuka,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.grey700,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    Gap(8.0),
                    Divider(color: AppColors.grey200),
                  ],
                ),
              ),
              // DESKRIPSI TEMPAT WISATA
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                child: Text(
                  place.deskripsi,
                  style: TextStyle(
                    color: AppColors.grey700,
                    fontSize: 14.0,
                    height: 1.5,
                  ),
                ),
              ),
              // GAMBAR-GAMBAR TAMBAHAN
              Container(
                margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 16.0),
                height: 120.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: place.galleryImages.length + 2,
                  itemBuilder: (context, index) {
                    if (index == 0 || index == place.galleryImages.length + 1) {
                      return SizedBox(width: 16.0);
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(place.galleryImages[index - 1]),
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
}
