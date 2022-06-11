import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timer_builder/timer_builder.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        title: Text(
          "${Get.arguments['name']}",
          style: TextStyle(
            fontSize: 28
          ),
        ),
      ),
      body: Column(
        children: [

          Expanded(child: Padding(
            padding: const EdgeInsets.all(20),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              elevation: 6,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.black , width: 3)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 50,
                      child: TimerBuilder.periodic(const Duration(seconds: 1), builder: (context){
                        return Text(
                          formatDate(DateTime.now(), [hh, ':' ,nn, ":" ,ss]),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50
                          ),
                        );
                      }),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "56",
                            style: TextStyle(
                                fontSize: 150,
                                color: Colors.red
                            ),
                          ),
                          Icon(Icons.favorite ,color: Colors.red,size: 50,)
                        ]
                    ),
                    ElevatedButton(onPressed: (){

                    }, child: Text(
                      '신고하기'
                    ),
                      style: ElevatedButton.styleFrom(
                      ),
                    )
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
