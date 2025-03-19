import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shimmer_loading_placeholder/package_shimmer.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => MapsPageState();
}

class MapsPageState extends State<MapsPage> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-18.164389, 49.410728),
    zoom: 18.0,
  );
  bool isMapLoaded = false;
  // static const CameraPosition _kLake = CameraPosition(bearing: 192.8334901395799, target: LatLng(37.43296265331129, -122.08832357078792), tilt: 59.440717697143555, zoom: 19.151926040649414);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Attendre que l'API soit chargée
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() => isMapLoaded = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isMapLoaded
          ? GoogleMap(
              mapType: MapType.none,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              markers: {
                const Marker(
                  markerId: MarkerId('La Vanilla Groupe'),
                  position: LatLng(-18.16429535927765, 49.41039020370186),
                  infoWindow: InfoWindow(
                    title: 'La Vanilla Groupe',
                    snippet: 'RCP6+756, Toamasina, Madagascar',
                  ),
                ),
              },
            )
          : ShimmerContainer(
              child: Container(height: 100, width: 200, color: Colors.grey),
            ),
    );
  }
}
