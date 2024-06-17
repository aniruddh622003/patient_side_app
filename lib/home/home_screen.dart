import 'package:flutter/material.dart';
import 'package:patient_side_app/home/upcoming_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool notification = true;

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
      body: Column(
        children: [
          UpcomingAppointments(),
          const SizedBox(height: 200),
        ],
      ),
    );
  }
}
