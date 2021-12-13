import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomPhoneContainer extends StatelessWidget {
  final String title;
  final String phoneNumber;
  const CustomPhoneContainer(
      {Key? key, required this.title, required this.phoneNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      color: Colors.grey[400]),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  phoneNumber,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            InkWell(
                onTap: () async{
                  launch('tel://$phoneNumber');
                },
                child: Icon(
                  Icons.phone,
                  color: Color(0xff36CD72),
                  size: 20,
                )),
          ],
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          height: 0.5,
          width: MediaQuery.of(context).size.width / 1.1,
          color: Colors.grey,
        ),
        SizedBox(
          height: 14,
        )
      ],
    ));
  }
}
