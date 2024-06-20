import 'package:flutter/material.dart';

class ManageFamilyWidget extends StatefulWidget {
  const ManageFamilyWidget({super.key});

  @override
  State<ManageFamilyWidget> createState() => _ManageFamilyWidgetState();
}

class _ManageFamilyWidgetState extends State<ManageFamilyWidget> {
  List<Map<String, String>> family = [
    {
      "name": 'John Doe',
      "avatar":
          'https://cdn.iconscout.com/icon/free/png-256/free-avatar-380-456332.png'
    },
    {
      "name": 'Sarah Doe',
      "avatar":
          'https://cdn.iconscout.com/icon/free/png-256/free-avatar-380-456332.png'
    },
  ];

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
              const Text('Manage Family',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(height: 10),
            ],
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var member in family)
                  FamilyMemberIcon(
                    member: member,
                    onTap: () {
                      // Navigate to the family member details screen

                      setState(() {
                        family.remove(member);
                      });
                    },
                  ),
                Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              shape: BoxShape.circle,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.pushNamed(
                                //     context, '/add_family_member');
                                // Add new family member to family list
                                setState(() {
                                  family.add({
                                    "name": 'New Member',
                                    "avatar":
                                        'https://cdn.iconscout.com/icon/free/png-256/free-avatar-380-456332.png'
                                  });
                                });
                              },
                              child: Icon(Icons.add,
                                  color: Colors.white, size: 30),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text("Add New", style: TextStyle(fontSize: 16)),
                        ]))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FamilyMemberIcon extends StatelessWidget {
  final member;
  final Function onTap;

  const FamilyMemberIcon(
      {super.key, required this.member, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                child: GestureDetector(
                  onTap: () {
                    onTap();
                  },
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/avatar.png',
                    image: member['avatar'],
                    width: 50,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(member['name'], style: TextStyle(fontSize: 16)),
            ]));
  }
}
