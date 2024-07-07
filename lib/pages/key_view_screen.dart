import 'package:flutter/material.dart';

class KeyViewScreen extends StatelessWidget {
  final List<Map<String, String>> a = [
    {
      "val": "1",
      "name": "Toyota",
      "expInDays": "Expires in 5 days",
      "expDate": "23 May 2024"
    },
    {
      "val": "0",
      "name": "Honda City",
      "expInDays": "Expires in 22 days",
      "expDate": "15 Jun 2024"
    },
    {
      "val": "1",
      "name": "BMW",
      "expInDays": "Expires in 88 days",
      "expDate": "20 Auguest 2024"
    },
  ];

  final ScrollController _scrollController = ScrollController();

  KeyViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc8c7e7),
      appBar: AppBar(
        backgroundColor: const Color(0xffc8c7e7),
        leading: Image.asset(
          "assets/images/Group.png",
          height: 26.67,
        ),
        title: const Text(
          "Key View",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Image.asset(
              "assets/images/mdi_bell-notification.png",
              height: 26.67,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController,
                      child: SizedBox(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: List.generate(
                            a.length,
                            (index) {
                              if (a[index]["val"] == "0") {
                                return RowForOne(
                                  name: a[index]["name"] ?? "",
                                  expDate: a[index]["expDate"] ?? "",
                                  expInDays: a[index]["expInDays"] ?? "",
                                );
                              } else {
                                return RowForTwo(
                                  name: a[index]["name"] ?? "",
                                  expDate: a[index]["expDate"] ?? "",
                                  expInDays: a[index]["expInDays"] ?? "",
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _scrollController.animateTo(
                      _scrollController.offset -
                          MediaQuery.of(context).size.width,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 12,
                    child: Center(child: Text("<")),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    _scrollController.animateTo(
                      _scrollController.offset +
                          MediaQuery.of(context).size.width,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 12,
                    child: Center(child: Text(">")),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width * 0.88,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[500]!,
                    offset: const Offset(4, 4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12, top: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          child: SizedBox(
                            height: 87.84,
                            child: Image.asset(
                              "assets/images/Group 24.jpg",
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 12,
                            backgroundImage:
                                AssetImage("assets/images/avatar.jpg"),
                            child: Text(
                              "3",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Policy due for renewal",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Honda City",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "30 May 2024",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    "purchased on ",
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Reg xxx:xxx:xxx",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "30 May 2024",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    "Expiring on ",
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.12,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("assets/images/Group 138.jpg")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RowForTwo extends StatelessWidget {
  const RowForTwo(
      {super.key,
      required this.name,
      required this.expInDays,
      required this.expDate});

  final String name;
  final String expInDays;
  final String expDate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 120,
                height: 2,
                color: Colors.black,
              ),
            ],
          ),
          Positioned(
            left: 0,
            bottom: 30,
            child: Column(
              children: [
                Text(
                  name,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text(
                  expInDays,
                  style:
                      const TextStyle(fontSize: 8, fontWeight: FontWeight.w700),
                ),
                Text(
                  expDate,
                  style: const TextStyle(fontSize: 7),
                ),
                Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                ),
                Container(
                  width: 2,
                  height: 40,
                  color: Colors.black,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/car.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowForOne extends StatelessWidget {
  const RowForOne(
      {super.key,
      required this.name,
      required this.expInDays,
      required this.expDate});

  final String name;
  final String expInDays;
  final String expDate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      // color: Colors.red,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // const SizedBox(
              //   height: 15,
              // ),
              Container(
                width: 120,
                height: 2,
                color: Colors.black,
              ),
            ],
          ),
          Positioned(
            left: 0,
            top: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/car.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 2,
                  height: 40,
                  color: Colors.black,
                ),
                Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
                Text(
                  name,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text(
                  expInDays,
                  style:
                      const TextStyle(fontSize: 8, fontWeight: FontWeight.w700),
                ),
                Text(
                  expDate,
                  style: const TextStyle(fontSize: 7),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
