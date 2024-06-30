import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OurDoctorsWidget extends StatefulWidget {
  const OurDoctorsWidget({super.key});

  @override
  State<OurDoctorsWidget> createState() => _OurDoctorsWidgetState();
}

class _OurDoctorsWidgetState extends State<OurDoctorsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Our Doctors',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    )),
                const SizedBox(height: 10),
              ],
            ),
            SizedBox(height: 10),
            OurDoctorCard(),
            OurDoctorCard(),
            OurDoctorCard(),
          ],
        ));
  }
}

class OurDoctorCard extends StatelessWidget {
  const OurDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, 0),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 100,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                clipBehavior: Clip.hardEdge,
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/avatar.png',
                  image:
                      "https://static.vecteezy.com/system/resources/thumbnails/003/350/177/small/avatar-man-person-design-free-vector.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 100,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. John Doe',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Cardiologist',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            width: 1,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                            )),
                        SizedBox(width: 5),
                        Text(
                          '49 Reviews',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Make Appointment'),
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    shadowColor: WidgetStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                  ),
                ),
              ),
            ],
          )
        ]));
  }
}
