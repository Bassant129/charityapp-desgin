// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../widgets/posts/posts_poor_peoples.dart';
import '../registration/login_screen.dart';

class poor extends StatelessWidget {
  const poor({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // color: aColor,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: Icon(
              Icons.logout,
            ),
          )
        ],
        title: Text(
          'Charity',
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        // SizedBox(height: 100),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 50),
              // SizedBox(height: 30),
              PostsPoorPeople(
                image: 'images/poor3.jpg',
                description: 'Help a sick child to complete his treatment',
              ),
              PostsPoorPeople(
                image: 'images/poor4.jpg',
                description:
                    'This grandfather wants to complete his treatment with Kharkh do you want to help him',
              ),
              PostsPoorPeople(
                image: 'images/poor5.jpg',
                description:
                    'Help us rebuild this hostel before it falls on the poor family',
              ),
              PostsPoorPeople(
                image: 'images/poor6.jpg',
                description: 'Help widowed women feed their children',
              ),
              PostsPoorPeople(
                image: 'images/poor1.jpg',
                description: 'A child looking for a new family',
              ),
              PostsPoorPeople(
                image: 'images/poor7.jpg',
                description:
                    'This man is looking for work, do you want to help this poor family?',
              ),
              PostsPoorPeople(
                image: 'images/poor8.jpg',
                description:
                    'This poor kid lost a family, do you want to adopt him?',
              ),
              PostsPoorPeople(
                image: 'images/poor9.jpg',
                description:
                    'This poor kid lost a family, do you want to adopt him?',
              ),
              PostsPoorPeople(
                image: 'images/poor10.jpg',
                description:
                    'Help us feed the street kids and find home for them.',
              ),
              PostsPoorPeople(
                image: 'images/poor2.jpg',
                description:
                    'Help the poor mother to get back to her children ',
              ),
              PostsPoorPeople(
                image: 'images/poor12.jpg',
                description:
                    'The association is doing a campaign to feed the poor do you want to help ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
