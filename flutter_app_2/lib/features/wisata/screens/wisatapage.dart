import 'package:flutter/material.dart';
import 'package:flutter_app_2/model/tourism_place.dart';
import 'package:flutter_app_2/features/wisata/screens/wisatadetailpage.dart';
import 'package:flutter_app_2/core/constans/app_colors.dart';

class WisataPage extends StatelessWidget {
  const WisataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata'),
        backgroundColor: AppColors.white,
        elevation: 0.0,
        scrolledUnderElevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Daftar Tempat Wisata',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Lihat Lainnya',
                  style: TextStyle(fontSize: 14.0, color: Colors.blue),
                )
              ],
            ),
          );
          }
          final TourismPlace place = tourismPlaceList[index - 1];
          return InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailPage(place: place);
            }));
          }, child: listItem(place));
        }
      ),
    );
  }

  Widget listItem(TourismPlace place) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
      child: SizedBox(
        height: 110.0,
        child: Card(
          color: AppColors.white,
          shadowColor: AppColors.white,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: AppColors.grey100, width: 1.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                  child: Image.asset(
                    place.imageAsset,
                    fit: BoxFit.cover,
                    height: double.infinity,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        place.name,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.values[2],
                        ),
                      ),
                      Text(place.location),
                      SizedBox(height: 4.0),
                      Divider(color: AppColors.grey200),
                      Text(place.waktuBuka, style: TextStyle(fontSize: 12.0, color: Colors.grey)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
