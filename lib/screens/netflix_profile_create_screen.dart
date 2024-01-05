import 'package:flutter/material.dart';

class NewProfile extends StatefulWidget {
  NewProfile({super.key});

  @override
  State<NewProfile> createState() => _NewProfileState();
}

class _NewProfileState extends State<NewProfile> {
  bool kidsValue = false;
  bool isProfileName = false;
  final TextEditingController _profileNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Add profile'),
        actions: [
          TextButton(
              onPressed: isProfileName
                  ? () {
                Navigator.pop(context);
              }
                  : null,
              style: TextButton.styleFrom(
                  foregroundColor: isProfileName ? Colors.green : Colors.black),
              child: const Text('Save'))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                'lib/assets/images/avatar1.png',
                width: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                    controller: _profileNameController,
                    onChanged: (text) {
                      setState(() {
                        if (_profileNameController.text.isNotEmpty) {
                          isProfileName = true;
                        }else{
                          isProfileName = false;
                        }
                      });
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade800,
                        hintText: 'Profile name',
                        hintStyle: const TextStyle(color: Colors.white70)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text(
                      'Kid\'s account',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Switch(
                        activeColor: Colors.blue,
                        value: kidsValue,
                        onChanged: (bool value) {
                          setState(() {
                            kidsValue = value;
                          });
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
