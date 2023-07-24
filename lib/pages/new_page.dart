import 'package:flutter/material.dart';
import 'package:new_project/pages/page_three.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
        ),
        title: Text('New Page')),
        body: Center(child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PageThree()));
          },
          child: Text('Page Three')),),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      width: double.infinity,
      height: 400,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.yellow,
            height: 40.0,
            width: 40.0,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
          ),
          Container(
            color: Colors.amber,
            height: 40.0,
            width: 40.0,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
          ),
          Container(
            color: Colors.brown,
            height: 40.0,
            width: 40.0,
          ),
        ],
      ),
    );
  }
}

