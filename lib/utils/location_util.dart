const GOOGLE_API_KEY = 'AIzaSyAkrVKuE7Lymy2SYzMnsOTgigw-kmJ0al0';

class LocationUtil {
  static String generateLocationPreviewImage(
      {double latitude, double longitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }
}
