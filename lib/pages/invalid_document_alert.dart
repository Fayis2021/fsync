import 'package:flutter/material.dart';

class InvalidDocumentAlert extends StatefulWidget {
  const InvalidDocumentAlert({super.key});

  @override
  State<InvalidDocumentAlert> createState() => _InvalidDocumentAlertState();
}

class _InvalidDocumentAlertState extends State<InvalidDocumentAlert> {
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
          // color: Colors.white,
          child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xffc8c7e7),
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
                color: const Color(0xffc8c7e7),
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
                        "assets/images/jam_alert-f.jpg",
                        height: 32,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "invalid document",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0x9911101F),
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
