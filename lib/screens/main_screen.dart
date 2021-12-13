import 'package:flutter/material.dart';
import 'package:flutter_hw_images/components/custom_phone_container.dart';
import 'package:flutter_hw_images/screens/detail_screen.dart';
import 'package:flutter_hw_images/worker/worker.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var workers = Workers.workers;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Сотрудники",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        Text(" Поиск"),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("У  кого  сегодня  день  рождения",
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                Container(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: workers.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    worker: workers[index],
                                  )));
                        },
                        child: Container(
                          height: 71,
                          width: 71,
                          padding: const EdgeInsets.only(right: 6),
                          child: CircleAvatar(
                            child: Image.asset(
                              workers[index].image,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  "у кого завтра день рождения",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 80,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 71,
                          width: 71,
                          padding: const EdgeInsets.only(right: 6),
                          child: CircleAvatar(
                            child: Image.asset(
                              workers[index].image,
                            ),
                          ),
                        );
                      }),
                ),
                Text(
                  "Все сотрудники",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: workers.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  backgroundColor: Colors.white,
                                  context: context,
                                  builder: (context) {
                                    return SingleChildScrollView(
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Позвонить",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox( height: 28, width: 28,
                                                    child: Container( 
                                                        decoration: BoxDecoration(
                                                            color:
                                                                Colors.grey[200],
                                                            shape:
                                                                BoxShape.circle),
                                                        child: Center(
                                                          child: IconButton(
                                                            splashRadius: 1,
                                                            padding:
                                                                EdgeInsets.all(0),
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: Icon(
                                                              Icons
                                                                  .clear_outlined,
                                                            ),
                                                          ),
                                                        )),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "${workers[index].surname} ${workers[index].name}\n${workers[index].patronymic}",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              SizedBox(
                                                height: 51,
                                              ),
                                              CustomPhoneContainer(
                                                title: 'Телефон основной',
                                                phoneNumber:
                                                    workers[index].number,
                                              ),
                                              CustomPhoneContainer(
                                                title: 'Телефон рабочий',
                                                phoneNumber:
                                                    workers[index].number,
                                              ),
                                              CustomPhoneContainer(
                                                title: 'Телефон WhatsApp',
                                                phoneNumber:
                                                    workers[index].number,
                                              ),
                                              CustomPhoneContainer(
                                                title: 'Телефон Telegram',
                                                phoneNumber:
                                                    workers[index].number,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      height: 45,
                                      width: 45,
                                      child: CircleAvatar(
                                        child:
                                            Image.asset(workers[index].image),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${workers[index].name} ${workers[index].surname}\n${workers[index].patronymic}",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.phone_rounded,
                                    color: Color(0xff36CD72),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          )
                        ],
                      );
                    },
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
