import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class BodyModelScreen extends StatelessWidget {
  const BodyModelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('3D Body Model')),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 5, right: 5, bottom: 13),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: ModelViewer(
                  src: 'assets/body_18y.glb',
                  alt: "3D Body Model",
                  ar: false,
                  autoRotate: true,
                  cameraControls: true,
                  backgroundColor: Color.fromARGB(207, 122, 108, 241),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

