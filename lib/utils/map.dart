import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: OSMFlutter(
            controller: MapController(
              initPosition:
                  GeoPoint(latitude: 34.9935285, longitude: 10.9378941),
              /*areaLimit: BoundingBox(
                east: 10.9383941,
                north: 34.9944445,
                south: 34.9926125,
                west: 10.9373941,
              ),*/
            ),
            osmOption: OSMOption(
              userTrackingOption: UserTrackingOption(
                enableTracking: false,
                unFollowUser: true,
              ),
              zoomOption: ZoomOption(
                initZoom: 11,
                minZoomLevel: 10,
                maxZoomLevel: 19,
                stepZoom: 1.0,
              ),
              userLocationMarker: UserLocationMaker(
                personMarker: MarkerIcon(
                  icon: Icon(
                    Icons.location_history_rounded,
                    color: Colors.red,
                    size: 48,
                  ),
                ),
                directionArrowMarker: MarkerIcon(
                  icon: Icon(
                    Icons.double_arrow,
                    size: 48,
                  ),
                ),
              ),
              roadConfiguration: RoadOption(
                roadColor: Colors.yellowAccent,
              ),
              markerOption: MarkerOption(
                  defaultMarker: MarkerIcon(
                icon: Icon(
                  Icons.person_pin_circle,
                  color: Colors.blue,
                  size: 56,
                ),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
