import 'package:flutter/material.dart';
import '../widgets/widget_support.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Hero(
              tag: "Salad",
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.5,
                    "assets/images/Salad.jpg",
                    fit: BoxFit.fill,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Mediterranean ",
              style: AppWidget.headTextFieldStyle(),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Text(
                  "Chickpea Salad",
                  style: AppWidget.smallHeadTextFieldStyle(),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  child: Text(
                    a.toString(),
                    style: AppWidget.boldTextFieldStyle(),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                    onTap: () {
                      ++a;
                      setState(() {});
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Enjoy a refreshing Mediterranean Chickpea Salad, packed with vibrant flavors! Crisp veggies, protein-rich chickpeas, and a tangy lemon vinaigrette come together for a healthy, delicious meal. Perfect for a quick, nourishing bite on the go. Order now and savor the taste of the Mediterranean",
              maxLines: 4,
              style: AppWidget.lightTextFieldStyle(),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "Delivery Time",
                  style: AppWidget.smallHeadTextFieldStyle(),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(
                  Icons.alarm,
                  color: Colors.black45,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  "30",
                  style: AppWidget.smallHeadTextFieldStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Price",
                  style: AppWidget.smallHeadTextFieldStyle(),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, top: 2, bottom: 2, right: 5),
                  height: 30,
                  width: 170,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Add to cart",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black54),
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "\$30",
              style: AppWidget.smallHeadTextFieldStyle(),
            ),
          ],
        ),
      ),
    ));
  }
}
