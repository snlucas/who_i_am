import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class Shot extends StatefulWidget {
  final CameraDescription camera;

  const Shot({this.camera});

  @override
  ShotState createState() => ShotState();
}

class ShotState extends State<Shot> {
  CameraController _controller;
  Future<void> _initializeControllerFuture;

  @override
  Widget build(BuildContext context) {}

  @override
  void initState() {
    super.initState();

    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
