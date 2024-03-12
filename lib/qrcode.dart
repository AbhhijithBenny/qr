import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qr extends StatefulWidget {
  const Qr({super.key});

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://th.bing.com/th/id/OIP.jAioCeiE6Cwhq9Ph3dee4gHaHa?w=206&h=206&c=7&r=0&o=5&pid=1.7"),
            SizedBox(
              height: 80,
            ),
            QrImageView(
              data: '1234567890',
              version: QrVersions.auto,
              size: 400.0,
            ),
            SizedBox(height: 120,),
            ElevatedButton(
              onPressed: () {},
              child: Text('Scan'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.amber,
                  shape: RoundedRectangleBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
