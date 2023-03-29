import 'package:flutter/material.dart';
import 'package:direct_caller_sim_choice/direct_caller_sim_choice.dart';

class MakeCallScreen extends StatelessWidget {
  final String phoneNumber;

  const MakeCallScreen({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Call'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            DirectCaller().makePhoneCall(phoneNumber);
          },
          child: Text('Call $phoneNumber'),
        ),
      ),
    );
  }
}
