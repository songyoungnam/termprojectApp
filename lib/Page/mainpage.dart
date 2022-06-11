import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:termproject/Page/person.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
                '홍길동'
            ),
            onTap: (){
              Get.to(() => PersonPage() , arguments: {
                "name" : "홍길동"
              });
            },
          )
        ],
      ),
    );
  }
}
