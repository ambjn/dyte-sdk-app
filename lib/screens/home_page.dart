import 'package:dyte_client/dyte.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text("Dyte Meeting"),
      ),
      body: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width - 25,
              height: MediaQuery.of(context).size.height - 25,
              child: DyteMeeting(
                roomName: "<roomName>",
                authToken: "<authToken>",
                onInit: null,
              ))
        ],
      ),
    );
  }
}
