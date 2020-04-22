import 'package:flutter/material.dart';

class CameraTab extends StatelessWidget {
  const CameraTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(child: Icon(Icons.camera),),
    );
  }
}