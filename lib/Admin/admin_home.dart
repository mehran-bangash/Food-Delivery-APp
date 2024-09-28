import 'package:flutter/material.dart';
import 'package:food_delivery_app/Admin/admin_food.dart';
import 'package:food_delivery_app/widgets/widget_support.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  'Home Admin',
                  style: AppWidget.headTextFieldStyle(),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminFood(),
                    ));
              },
              child: Material(
                elevation: 10,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: Container(
                  height: 180,
                  padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  width: MediaQuery.of(context).size.width * (500 / 1080),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/Salad.jpg',
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      const Text(
                        'Add Food Items',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
