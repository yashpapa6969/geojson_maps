import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.deepPurple,
        ),
        // Set useMaterial3 to true if you're using Material3 design
        // useMaterial3: true,
      ),
      home: MapPage(),
    );
  }
}

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late MapShapeSource _mapSource;

  @override
  void initState() {
    super.initState();
    _mapSource = MapShapeSource.asset(
      'assets/BBMP.geojson',
      shapeDataField: 'STATE_NAME',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfMaps(
        layers: [
          MapShapeLayer(
            source: _mapSource,
          ),
        ],
      ),
    );
  }
}

