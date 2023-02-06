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
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          color: Colors.grey.shade300,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Row(
                children: [
                  getExpanded('beer', 'Bars & Hotels', '42 Place'),
                  getExpanded('dining', 'Fine Dining', '15 place')
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  getExpanded('cafe', 'Cafes', '27 place'),
                  getExpanded('tracking', 'Nearby', '35 place')
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  getExpanded('cuisine', 'Fast Foods', '29 place'),
                  getExpanded('fast-food', 'Fast Featured Foods', '21 place'),
                ],
              ))
            ],
          )),
    );
  }

  Expanded getExpanded(String images, String mainText, String subText) {
    return Expanded(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/main/$images.png',
            height: 80.0,
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            mainText,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            subText,
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5)),
        boxShadow: [
          BoxShadow(),
        ],
      ),
    ));
  }
}
