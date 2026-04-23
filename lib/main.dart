import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DigitalIDCard(),
  ));
}

class DigitalIDCard extends StatelessWidget {
  const DigitalIDCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Digital ID Card'),
        centerTitle: true,
        backgroundColor: Colors.teal[900],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: [
            Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // Profile Image
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/profile.jpg.jpeg'),
                    ),
                    const SizedBox(height: 10),

                    // Name and Department
                    const Text(
                      'Nadia Begum',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Batch: 63rd, Department of CSE',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                      ),
                    ),

                    const Divider(height: 40.0, thickness: 1.0),

                    // Information List
                    const ListTile(
                      leading: Icon(Icons.person_outline),
                      title: Text('ID: 0182410012101168'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.email_outlined),
                      title: Text('Email: nadiahaque516@gmail.com'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.phone_outlined),
                      title: Text('Phone: +8801700000000'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
