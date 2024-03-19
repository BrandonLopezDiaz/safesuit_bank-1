import 'package:flutter/material.dart';

class ImagenesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start, children: [
      Image.asset(
        "assets/images/6404100.png",
        height: 35.0,
      ),
      const SizedBox(
        width: 100.0,
      ),
      // const Icon(
      //   Icons.add_business_sharp,
      //   color: Colors.white,
      // ),
      Image.asset(
        "assets/images/Oxxo.png",
        height: 15.0,)
    ]);
  }
}
