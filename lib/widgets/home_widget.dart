import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(100, (index) {
            return PostCard();
          }),
          //for (int i = 0; i < 5; ++i) PostCard(),
        ),
      ),
    );
  }

  Widget PostCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        //surfaceTintColor: Colors.blue,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/564x/8c/da/8c/8cda8ca891afa64893369e592fd94822.jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
              //width: 300,
              //height: 300,
              fit: BoxFit.cover,
              "https://i.pinimg.com/564x/8c/da/8c/8cda8ca891afa64893369e592fd94822.jpg",
              //loadingBuilder: (context, ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.favorite),
                Text("100"),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.chat),
                Text("99"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
