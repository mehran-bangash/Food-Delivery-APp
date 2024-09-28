import 'package:flutter/material.dart';
import 'package:food_delivery_app/Pages/bottomNav.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/widget_support.dart';
import 'detail_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool iceCream = false, pizza = false, salad = false, burger = false;

  @override
  void initState() {
    super.initState();
    // Set iceCream to true by default
    iceCream = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //bottomNavigationBar: const BottomNavState(),
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  " Hello Mehran Ali",
                  style: AppWidget.boldTextFieldStyle(),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(left: 8, top: 5),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      textAlign: TextAlign.start,
                      "Delicious Food",
                      style: AppWidget.headTextFieldStyle()))),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                  textAlign: TextAlign.start,
                  "Discover and Get Great Food",
                  style: AppWidget.lightTextFieldStyle()),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          showItem(),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                  child: Row(
                children: [
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const DetailPage(),
                                          ));
                                    },
                                    child: Hero(
                                        tag: "Salad",
                                        child: Image.asset(
                                          "assets/images/Salad.jpg",
                                          height: 150,
                                          width: 150,
                                          fit: BoxFit.cover,
                                        ))),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Veggle Taco Hash",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Fresh and Healthy",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$30",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                )
                              ],
                            ),
                          ))),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.asset(
                                      "assets/images/Salad.jpg",
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Veggle Taco Hash",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Fresh and Healthy",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$30",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                )
                              ],
                            ),
                          ))),
                  const SizedBox(height: 5),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.asset(
                                      "assets/images/Salad.jpg",
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Veggle Taco Hash",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Fresh and Healthy",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$30",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                )
                              ],
                            ),
                          ))),
                  const SizedBox(height: 5),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.asset(
                                      "assets/images/Salad.jpg",
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Veggle Taco Hash",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Fresh and Healthy",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$30",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                )
                              ],
                            ),
                          ))),
                  const SizedBox(height: 5),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.asset(
                                      "assets/images/Salad.jpg",
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Veggle Taco Hash",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Fresh and Healthy",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$30",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                )
                              ],
                            ),
                          ))),
                  const SizedBox(height: 5),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.asset(
                                      "assets/images/Salad.jpg",
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Veggle Taco Hash",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Fresh and Healthy",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$30",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                )
                              ],
                            ),
                          ))),
                  const SizedBox(height: 5),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.asset(
                                      "assets/images/Salad.jpg",
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Veggle Taco Hash",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Fresh and Healthy",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$30",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                )
                              ],
                            ),
                          ))),
                  const SizedBox(height: 5),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.asset(
                                      "assets/images/Salad.jpg",
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Veggle Taco Hash",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Fresh and Healthy",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$30",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                )
                              ],
                            ),
                          ))),
                  const SizedBox(height: 5),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.asset(
                                      "assets/images/Salad.jpg",
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Veggle Taco Hash",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Fresh and Healthy",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$30",
                                  style: AppWidget.smallHeadTextFieldStyle(),
                                )
                              ],
                            ),
                          )))
                ],
              ))),

          const SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "assets/images/Salad.jpg",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        )),
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mediterranean Chickpea salad",
                          style: AppWidget.smallHeadTextFieldStyle(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Honey goat cheese",
                          style: AppWidget.lightTextFieldStyle(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$26",
                          style: AppWidget.smallHeadTextFieldStyle(),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "assets/images/Salad.jpg",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        )),
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mediterranean Chickpea salad",
                          style: AppWidget.smallHeadTextFieldStyle(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Honey goat cheese",
                          style: AppWidget.lightTextFieldStyle(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$26",
                          style: AppWidget.smallHeadTextFieldStyle(),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "assets/images/Salad.jpg",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        )),
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mediterranean Chickpea salad",
                          style: AppWidget.smallHeadTextFieldStyle(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Honey goat cheese",
                          style: AppWidget.lightTextFieldStyle(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$26",
                          style: AppWidget.smallHeadTextFieldStyle(),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )

          // iceCream
          //     ? Container(
          //         color: Colors.yellow,
          //         child: Text(
          //           "icecrem",
          //           style: AppWidget.headTextFieldStyle(),
          //         ),
          //       )
          //     : Container(),
          // pizza
          //     ? Container(
          //         color: Colors.blueAccent,
          //         child: Text("pizza"),
          //       )
          //     : Container(),
          // salad
          //     ? Container(
          //         color: Colors.orange,
          //         child: Text("salad"),
          //       )
          //     : Container(),
          // burger
          //     ? Container(
          //         color: Colors.purple,
          //         child: Text("burger"),
          //       )
          //     : Container(),
        ],
      ),
    ));
  }

  Widget showItem() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Material(
            elevation: 5,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: GestureDetector(
              onTap: () {
                iceCream = true;
                salad = false;
                burger = false;
                pizza = false;
                setState(() {});
              },
              child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: iceCream ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Image.asset(
                    "assets/images/ice-cream.png",
                    height: 30,
                    width: 30,
                    color: iceCream ? Colors.white : Colors.black,
                  )),
            )),
        Material(
            elevation: 5,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: GestureDetector(
              onTap: () {
                iceCream = false;
                salad = false;
                burger = false;
                pizza = true;
                setState(() {});
              },
              child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: pizza ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Image.asset(
                    "assets/images/pizza.png",
                    height: 50,
                    width: 50,
                    color: pizza ? Colors.white : Colors.black,
                    fit: BoxFit.cover,
                  )),
            )),
        Material(
            elevation: 5,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: GestureDetector(
              onTap: () {
                iceCream = false;
                salad = true;
                burger = false;
                pizza = false;
                setState(() {});
              },
              child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: salad ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Image.asset(
                    "assets/images/salad.png",
                    height: 50,
                    width: 50,
                    color: salad ? Colors.white : Colors.black,
                    fit: BoxFit.cover,
                  )),
            )),
        Material(
            elevation: 5,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: GestureDetector(
              onTap: () {
                iceCream = false;
                salad = false;
                burger = true;
                pizza = false;
                setState(() {});
              },
              child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: burger ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Image.asset(
                    "assets/images/burger.png",
                    height: 50,
                    width: 50,
                    color: burger ? Colors.white : Colors.black,
                    fit: BoxFit.cover,
                  )),
            )),
      ],
    );
  }
}
