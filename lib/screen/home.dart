import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(    
      child: FutureBuilder(
        builder: (context, AsyncSnapshot snapshot) {
        return ListView.builder(
        itemCount: snapshot.data.length,
        itemBuilder: (context, index) {
          return Mybox(snapshot.data[index]['fname'],snapshot.data[index]['lname'],snapshot.data[index]['avatar'],snapshot.data[index]['username']);
        }
      );
      },
      future: getData(),
      )
      
    );
  } 
Widget Mybox (var fname, var lname, var avtar, var username ){
  return Container(
    color: Colors.purple,
    margin: EdgeInsets.all(15),
    child: ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(avtar)),
      title: Text(fname),
      subtitle: Text(lname),
      trailing: Text(username),
    ),
  );
}
  Future getData()async{
    // https://www.melivecode.com/api/users
    var url =Uri.http('www.melivecode.com','/api/users');
    var response = await http.get(url);
    var result = json.decode(response.body);
    print("fetch api commpleate");
    return result;
  }

}
