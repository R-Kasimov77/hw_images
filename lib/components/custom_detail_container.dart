import 'package:flutter/material.dart';

class CustomDetailContainer extends StatelessWidget {
  final String title;
  final String description;
  const CustomDetailContainer(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(color: Colors.grey[400]),
          ),
        ),
        Text(
          description,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[300]),
            SizedBox(
                        height: 14,
                      ),
      ],
    );
  }
}
