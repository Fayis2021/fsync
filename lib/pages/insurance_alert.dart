import 'package:flutter/material.dart';


class InsuranceAlert extends StatefulWidget {
  const InsuranceAlert({super.key});

  @override
  State<InsuranceAlert> createState() => _InsuranceAlertState();
}

class _InsuranceAlertState extends State<InsuranceAlert> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showCustomAlertDialog(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.amber,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Center(
                  child: GestureDetector(
                onTap: () {
                  showCustomAlertDialog(context);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.98,
                  width: MediaQuery.of(context).size.width * 0.96,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                ),
              )),
            ),
          )),
    );
  }

  void showCustomAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            height: 240,
            padding: const EdgeInsets.all(14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.close,
                            size: 20,
                            weight: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )),
                Column(
                  children: [
                    SizedBox(
                      height: 32,
                      width: 32,
                      child: Image.asset(
                        "assets/images/Subtract1.jpg",
                        height: 32,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(
                      width: 150,
                      child: Center(
                        child: Text(
                          "insurance details uploaded successfully",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0x9911101F),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}
