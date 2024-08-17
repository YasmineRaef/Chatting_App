import 'package:flutter/material.dart';

class Chatter extends StatelessWidget {
  const Chatter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 370,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
      ),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.teal.shade700,
                child: const CircleAvatar(
                  radius: 22,
                  backgroundImage:
                      AssetImage('assets/images/profile_lettuce.jpg'),
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Yasmine Raef", style: TextStyle(fontSize: 18)),
                  Text("5 minutes to doorknock 😎",
                      style: TextStyle(fontSize: 15))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("12:58 PM", style: TextStyle(fontSize: 12)),
                  Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(50)),
                      child: TextButton(
                        style: const ButtonStyle(
                            enableFeedback: true,
                            overlayColor:
                                MaterialStatePropertyAll(Colors.transparent)),
                        onPressed: () {
                          print("I am clicked");
                        },
                        child: const Text("1",
                            style: TextStyle(color: Colors.black)),
                      ))
                ],
              )
            ],
          )),
    );
  }
}
