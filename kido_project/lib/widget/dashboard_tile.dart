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
      padding: const EdgeInsets.all(20),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 365,
                  height: 145,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.red,
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
                          style: TextStyle(
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
