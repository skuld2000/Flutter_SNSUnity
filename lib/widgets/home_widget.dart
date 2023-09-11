import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Column(
        children: [
          for (int i = 0; i < 5; ++i) PostCard(),
        ],
      )),
    );
  }

  Card PostCard() {
    return Card(
      color: Colors.white,
      //surfaceTintColor: Colors.blue,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("UserName"),
                  Text("2023/09/11"),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Image.network(
              "https://i.pinimg.com/564x/8c/da/8c/8cda8ca891afa64893369e592fd94822.jpg"),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(Icons.favorite),
              Text("100"),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.chat),
              Text("99"),
            ],
          )
        ],
      ),
    );
  }
}
