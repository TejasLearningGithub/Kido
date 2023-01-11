import 'package:flutter/material.dart';

class DashboardTile extends StatelessWidget {
  final String imgUrl;
  final String textString;

  const DashboardTile({
    super.key,
    required this.imgUrl,
    required this.textString,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          //const EdgeInsets.all(20),
          const EdgeInsets.only(
        top: 17,
        bottom: 10,
        left: 22,
        right: 10,
      ),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.099 - 11.1040,
                  height: MediaQuery.of(context).size.height / 7,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Color.fromARGB(100, 189, 83, 25),
                        width: 2,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(imgUrl),
                        Text(
                          textString,
                          style: const TextStyle(
                              color: Color(0xFF00356A),
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
