import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

class GoogleMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String htmlId = '7';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final myLatlng = LatLng(45.629593044638405, -122.52108345922777);

      final elem = DivElement()
        ..id = htmlId
        ..style.width = '100%'
        ..style.height = '100%'
        ..style.border = 'none';

      final mapOptions = MapOptions()
        ..zoom = 12
        ..center = myLatlng;

      final map = GMap(elem, mapOptions);

      final marker1 = Marker(MarkerOptions()
            ..position = LatLng(45.70001, -122.56080)
            ..map = map
            ..title = 'Resurrection AFH'
          //..label = 'Resurrection AFH'
          );

      final marker2 = Marker(MarkerOptions()
        ..position = LatLng(45.64802408194619, -122.52900000155519)
        ..map = map
        ..title = 'Camas Lily AFH');

      final marker3 = Marker(MarkerOptions()
            ..position = LatLng(45.629593044638405, -122.52108345922777)
            ..map = map
            ..title = 'First Place AFH'
          //..label = 'First Place AFH'
          );

      final marker4 = Marker(MarkerOptions()
            ..position = LatLng(45.63002374061717, -122.51799244388359)
            ..map = map
            ..title = 'Grace AFH'
          //..label = 'Grace AFH'
          );

      final infoWindow1 =
          InfoWindow(InfoWindowOptions()..content = contentString1);
      marker1.onClick.listen((event) => infoWindow1.open(map, marker1));

      final infoWindow2 =
          InfoWindow(InfoWindowOptions()..content = contentString2);
      marker2.onClick.listen((event) => infoWindow2.open(map, marker2));

      final infoWindow3 =
          InfoWindow(InfoWindowOptions()..content = contentString3);
      marker3.onClick.listen((event) => infoWindow3.open(map, marker3));

      final infoWindow4 =
          InfoWindow(InfoWindowOptions()..content = contentString4);
      marker4.onClick.listen((event) => infoWindow4.open(map, marker4));

      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }
}

var contentString1 = '<div id="content">' +
    '<div id="siteNotice">' +
    '</div>' +
    '<h1 id="firstHeading" class="firstHeading">Resurrection Adult Family Home</h1>' +
    '</div>' +
    '</div>';

var contentString2 = '<div id="content">' +
    '<div id="siteNotice">' +
    '</div>' +
    '<h1 id="firstHeading" class="firstHeading">Camas Lily Adult Family Home</h1>' +
    '</div>' +
    '</div>';

var contentString3 = '<div id="content">' +
    '<div id="siteNotice">' +
    '</div>' +
    '<h1 id="firstHeading" class="firstHeading">First Place Adult Family Home</h1>' +
    '</div>' +
    '</div>';

var contentString4 = '<div id="content">' +
    '<div id="siteNotice">' +
    '</div>' +
    '<h1 id="firstHeading" class="firstHeading">Grace Adult Family Home</h1>' +
    '</div>' +
    '</div>';
