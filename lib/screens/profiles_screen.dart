import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/movies_main_screen.dart';
import 'package:netflix_clone/screens/netflix_profile_create_screen.dart';

class AccountSelectionPage extends StatelessWidget {
  const AccountSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 30),
              const Spacer(),
              Image.asset('lib/assets/images/logo.png', width: 130),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(height: 30),
          const Text(
            'Who\'s watching?',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 50),
          Container(
            margin: const EdgeInsets.only(top: 5, left: 70, right: 70),
            child: Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      child: SizedBox(
                        width: 120,
                        child: Image.asset('lib/assets/images/avatar4.png'),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MovieListScreen()));
                      },
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Netflix User',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(width: 25),
                Column(
                  children: [
                    SizedBox(
                        width: 120,
                        height: 120,
                        child: IconButton.outlined(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder()),
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.white60.withOpacity(0.2);
                                  }
                                  return Colors.transparent;
                                },
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewProfile()));
                            },
                            icon: const Icon(
                              Icons.add,
                              size: 30,
                            ))),
                    const SizedBox(height: 5),
                    const Text(
                      'Add profile',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
