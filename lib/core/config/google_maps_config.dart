import 'package:universal_html/html.dart' as html;
import 'package:flutter_dotenv/flutter_dotenv.dart';

void configureGoogleMaps() {
  final googleMapsApiKey = dotenv.env['GOOGLE_MAPS_API_KEY'];
  final script = html.ScriptElement()
    ..src = 'https://maps.googleapis.com/maps/api/js?key=$googleMapsApiKey&callback=initMap'
    ..async = true;
  html.document.body?.append(script);
}
