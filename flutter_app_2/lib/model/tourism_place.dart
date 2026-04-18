class TourismPlace {
  String name;
  String location;
  String imageAsset;
  String waktuBuka;
  String deskripsi;
  List <String> galleryImages = [];

  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.waktuBuka,
    required this.deskripsi,
    required this.galleryImages,
  });
}

var tourismPlaceList = [
TourismPlace(
name: 'TalkShow: Festival Kebudayaan Desa',
location: 'Kota Tua, Surabaya',
imageAsset: 'assets/images/1.png',
waktuBuka: '10.00 - 16.00 WIB',
deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc',
galleryImages: ['assets/images/1.png', 'assets/images/2.png', 'assets/images/3.png', 'assets/images/4.png']
),
TourismPlace(
name: 'Kelenteng Sanggar Agung',
location: 'Kenjeran',
imageAsset: 'assets/images/2.png',
waktuBuka: '08.00 - 17.00 WIB',
deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc',
galleryImages: ['assets/images/2.png', 'assets/images/2.png', 'assets/images/3.png', 'assets/images/4.png']
),
TourismPlace(
name: 'House of Sampoerna',
location: 'Krembangan Utara',
imageAsset: 'assets/images/3.png',
waktuBuka: '09.00 - 17.00 WIB',
deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc',
galleryImages: ['assets/images/1.png', 'assets/images/2.png', 'assets/images/3.png', 'assets/images/4.png']
),
TourismPlace(
name: 'Tugu Pahlawan',
location: 'Alun-alun contong',
imageAsset: 'assets/images/4.png',
waktuBuka: '24 Jam',
deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc',
galleryImages: ['assets/images/1.png', 'assets/images/2.png', 'assets/images/3.png', 'assets/images/4.png']
),
TourismPlace(
name: 'Patung Suro Boyo',
location: 'Wonokromo',
imageAsset: 'assets/images/5.png',
waktuBuka: '24 Jam',
deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc',
galleryImages: ['assets/images/1.png', 'assets/images/2.png', 'assets/images/3.png', 'assets/images/4.png']
),
TourismPlace(
name: 'Patung Suro Boyo',
location: 'Wonokromo',
imageAsset: 'assets/images/5.png',
waktuBuka: '24 Jam',
deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc',
galleryImages: ['assets/images/1.png', 'assets/images/2.png', 'assets/images/3.png', 'assets/images/4.png']
),
TourismPlace(
name: 'Pulau Lusi, Lumpur Lapindo',
location: 'Sidoarjo',
imageAsset: 'assets/images/5.png',
waktuBuka: '24 Jam',
deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc',
galleryImages: ['assets/images/1.png', 'assets/images/2.png', 'assets/images/3.png', 'assets/images/4.png']
),
];