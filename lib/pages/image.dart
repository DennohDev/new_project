import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      Image.asset('assets/images/products.png', height: 100, width: 100,),
      Image.asset('assets/images/products.png', height: 100, width: 100,),
      Image.asset('assets/images/products.png', height: 100, width: 100,),
        ],
      ),
    );
  }
}
