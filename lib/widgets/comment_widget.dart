import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close)),
          buildComment(),
          buildComment(),
          buildComment(),
          Expanded(
              child: Container(
            width: 100,
          )),
          const SizedBox(
            height: 150,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                      'https://i.namu.wiki/i/IzZNZMwZo3_qZ1fAHJ6Iu05VMyHxwOuboM-UkIx_Ggtiu9es8sq96g67ojeh23qEw-hCI4oO2STMYhKK5Vi20w.webp'),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      // labelText: '텍스트 입력',
                      hintText: '텍스트를 입력해주세요',
                      border: OutlineInputBorder(), //외곽선
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildComment() {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 1,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
                'https://i.namu.wiki/i/IzZNZMwZo3_qZ1fAHJ6Iu05VMyHxwOuboM-UkIx_Ggtiu9es8sq96g67ojeh23qEw-hCI4oO2STMYhKK5Vi20w.webp'),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("UserName", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("댓글 입니다. 테스트!!!!"),
            ],
          )
        ],
      ),
    );
  }
}
