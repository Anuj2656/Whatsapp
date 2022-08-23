import 'package:flutter/material.dart';
class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:<Widget>[
        _buildCallsItem(true),
        _buildCallsItem(true),
        _buildCallsItem(true),
        _buildCallsItem(true),
        _buildCallsItem(false),
        _buildCallsItem(true),
        _buildCallsItem(false),
        _buildCallsItem(true),
        _buildCallsItem(false),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
      child: Icon(Icons.add_call),
      backgroundColor: Colors.green,
    ),
    );
  }
  _buildCallsItem(isCall) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Color(0xffdddddd),
        child: Icon(Icons.person,color: Colors.black,size: 38),
      ),
      title: Text("user 1"),
      subtitle: Row(
        children: <Widget>[
          Icon(Icons.transit_enterexit, size: 23.0,color: Colors.red,
          ),
          SizedBox(width: 3.0,),
          Text("7 july, 7:35 am",style: TextStyle(
    color: Colors.grey,
    ),)
        ],
      ),
      trailing: IconButton(icon: Icon(isCall?Icons.call: Icons.videocam, color: Colors.green, size: 28,),
          onPressed: () {}),
    );
  }
}
