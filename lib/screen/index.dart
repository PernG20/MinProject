import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Discovery",
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [],))
          ],
        ),
      ),
    );
  }
}
