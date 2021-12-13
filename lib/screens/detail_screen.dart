import 'package:flutter/material.dart';
import 'package:flutter_hw_images/components/custom_detail_container.dart';
import 'package:flutter_hw_images/worker/worker.dart';

class DetailScreen extends StatelessWidget {
  final Worker worker;

  const DetailScreen({Key? key, required this.worker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 18,
                ),
                Image.asset(
                  worker.image, 
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "${worker.surname} ${worker.name}\n${worker.patronymic}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  worker.positon,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.blue),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      CustomDetailContainer(
                          title: 'Направление', description: worker.direction),
                      CustomDetailContainer(
                          title: 'Отдел', description: worker.department),
                          CustomDetailContainer(
                          title: 'Email', description: worker.email),
                          CustomDetailContainer(
                          title: 'Дата рождения', description: worker.birth),
                          CustomDetailContainer(
                          title: 'Телефон основной', description: worker.number),
                          CustomDetailContainer(
                          title: 'Телефон рабрчий', description: worker.number),
                          CustomDetailContainer(
                          title: 'Телефон WhatsApp', description: worker.number),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
