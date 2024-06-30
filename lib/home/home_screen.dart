import 'package:flutter/material.dart';
import 'package:patient_side_app/home/manage_family.dart';
import 'package:patient_side_app/home/our_doctors.dart';
import 'package:patient_side_app/home/upcoming_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool notification = true;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UH Care For You',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          actions: [
            IconButton(
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(const Color.fromARGB(20, 0, 0, 0)),
              ),
              icon: Stack(
                children: [
                  const Icon(Icons.notifications),
                  notification
                      ? Positioned(
                          top: 0,
                          right: 2,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
              onPressed: () {
                // Navigate to the settings screen
              },
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              UpcomingAppointments(),
              ManageFamilyWidget(),
              OurDoctorsWidget()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          // onTap: (index) {
          //   setState(() {
          //     selectedIndex = index;
          //   });
          // },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_online),
              label: 'Appointments',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.green,
            ),
          ],
        ));
  }
}
