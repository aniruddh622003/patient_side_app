import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UpcomingAppointments extends StatefulWidget {
  const UpcomingAppointments({super.key});

  @override
  State<UpcomingAppointments> createState() => _UpcomingAppointmentsState();
}

class _UpcomingAppointmentsState extends State<UpcomingAppointments> {
  bool appointment = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text('Upcoming Appointments',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      )),
                  const SizedBox(width: 10),
                  Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ],
              ),
              TextButton(
                  onPressed: () {
                    // Navigate to the appointments screen
                  },
                  child: const Text('See all'),
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                    ),
                  )),
            ],
          ),
          SizedBox(height: 10),
          appointment ? AppointmentCard() : Text('No upcoming appointments'),
        ],
      ),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInImage.assetNetwork(
                    placeholder: 'assets/avatar.png',
                    image:
                        "https://cdn.iconscout.com/icon/free/png-256/free-avatar-380-456332.png",
                    width: 50,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. John Doe',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Dermatologist',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.call),
                color: Theme.of(context).colorScheme.primary,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                      Theme.of(context).colorScheme.onPrimary),
                ),
                onPressed: () {
                  // Cancel the appointment
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: HSLColor.fromColor(Theme.of(context).colorScheme.primary)
                  .withLightness(0.15)
                  .toColor(),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Icon(Icons.calendar_today,
                          color: Theme.of(context).colorScheme.onPrimary),
                      const SizedBox(width: 10),
                      Text(
                        'Mon, 12th July',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 16,
                        ),
                      ),
                    ]),
                    VerticalDivider(),
                    Row(children: [
                      Icon(Icons.access_time,
                          color: Theme.of(context).colorScheme.onPrimary),
                      const SizedBox(width: 10),
                      Text(
                        '10:00 AM',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 16,
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
