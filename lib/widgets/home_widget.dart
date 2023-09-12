import 'dart:math';

import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  final List imgUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqJZHg4dAoVaUUWGh44kafY7g2yddK8c6SwQ&usqp=CAU',
    'https://i.pinimg.com/736x/3f/9f/a7/3f9fa7705494a295eb47cb4d89de2f51.jpg',
    'https://i1.ruliweb.com/img/23/02/28/18694b521e957745d.png',
    'https://i.pinimg.com/564x/25/2f/37/252f379316d5579d5e789af59ae71290.jpg',
    'https://img.wowtv.co.kr/wowtv_news/dnrs/20230503/2023050310412909722d3244b4fed182172185139.jpg',
    'https://img.etnews.com/news/article/2023/02/16/article_16105822087048.jpg',
    'https://cdn.pixabay.com/photo/2023/04/12/16/09/ai-generated-7920690_1280.jpg',
    'https://blog.kakaocdn.net/dn/c9odXo/btr4tijxs1A/dsfZl36LqLcNElfTgGa2Ek/img.png',
    'https://i3.ruliweb.com/img/23/02/20/1866d62e85c4e2df2.png',
    'https://mblogthumb-phinf.pstatic.net/MjAxOTA4MTFfODAg/MDAxNTY1NTM0MDY2ODIy.yzJ7EqywBoc26ZG-fOezGSSCL8jSI57WLoxKk_pv60Ig.xJ_No5PLymVJAdkKqg2JEqNzN_pFZjfJpzdavrVVQc8g.JPEG.rkdrmsals111/MV5BOGFjYWNkMTMtMTg1ZC00Y2I4LTg0ZTYtN2ZlMzI4MGQwNzg4XkEyXkFqcGdeQXVyMTkxNjUy.jpg?type=w800',
    'https://www.francezone.com/xe/files/attach/images/131/899/197/002/4d693bac9d86eee5459e677a241c9dd9.jpg',
    'https://newsimg-hams.hankookilbo.com/2023/07/07/584d0f73-9fc2-43df-8e23-5fd106b2103b.jpg',
    'https://i3.ruliweb.com/img/22/10/07/183ae9566441e6f7a.png',
    'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FdvMZRl%2FbtrZ5jGyOKO%2FajjEeZGDBybyfKvlK8KK51%2Fimg.jpg',
    'https://i.pinimg.com/736x/47/a2/00/47a200bfdff7f665e04ee3d567d65ae2.jpg',
    'https://cdn.wujiebantu.com/ai/2A91FB618E2B8D7866B9CAE9EBFC5398-01.jpg',
    'https://blog.kakaocdn.net/dn/dbJ3va/btsddUOcDHa/rTiYjWCM3KXeg2KtC1x1V1/img.jpg',
    'https://img.allurekorea.com/allure/2023/04/style_643680916011c.jpg',
    'https://www.gunplancube.co.kr/data/goods/1/2021/03/2156_temp_16163271403263view.jpg',
    'https://cdn.ppomppu.co.kr/zboard/data3/2023/0129/m_20230129140233_FRiM1wouWZ.jpg',
    'https://image.ytn.co.kr/osen/2022/07/01c2b765-f936-4584-beb3-4f0f49f36043.jpg',
    'https://i.ytimg.com/vi/jlWc9u2sKHQ/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAfyKySRQtoeqQs18XWsX2E3M5RBQ',
    'https://i.pinimg.com/736x/12/a6/38/12a6389c67e044844e6fa13e51bb451d.jpg',
    'https://img.smlounge.co.kr/upload/NPFILE/202104/448707.jpg',
    'https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/5496237878/B.jpg?210000000',
    'https://blog.kakaocdn.net/dn/bdXVLZ/btrYY6mCrsY/53J2kA6jo9lJmDcGNrQLpk/img.png',
    'https://cdn.hankooki.com/news/photo/202303/66263_88287_1679805001.jpg',
    'https://t1.daumcdn.net/cafeattach/Uzlo/8c935cefdb12cd7f13dcd05653693bcaf24569f0',
    'https://i2.ruliweb.com/thumb/23/04/05/1874fa64a64570d28.jpg',
    'https://wjdqhzld.com/wp-content/uploads/2023/02/AI-%EC%8B%A4%EC%82%AC-%EA%B7%B8%EB%A6%BC-1.jpg',
  ];

  final List thumbUrls = [
    'https://d2v80xjmx68n4w.cloudfront.net/gigs/fUwil1683705101.jpg',
    'https://i3.ruliweb.com/img/23/04/03/1874613cffb570d28.jpg',
    'https://appdata.hungryapp.co.kr/data_file/data_img/202008/23/W15981325981084785.jpg/hungryapp/resize/500',
    'https://m.ittanstore.com/web/product/big/202304/b17f56b64b27a00ec739807bc519e8c5.jpg',
    'https://blog.kakaocdn.net/dn/B8esu/btrnAXHQTJo/r5RaH204iEKmcLrHLt6JFK/img.jpg',
    'https://previews.123rf.com/images/doraclub/doraclub1509/doraclub150900074/45522349-%EA%B7%80%EC%97%AC%EC%9A%B4-%EA%B3%A0%EC%96%91%EC%9D%B4-%EC%BA%90%EB%A6%AD%ED%84%B0.jpg',
    'https://thumb.photo-ac.com/03/03f49ab6ea5333f5b9e2c2b7263ccb9c_t.jpeg',
    'https://cdn.eroun.net/news/photo/202305/32650_59862_4410.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Park_Bo-gum_at_Incheon_Airport_in_December_2016.jpg/275px-Park_Bo-gum_at_Incheon_Airport_in_December_2016.jpg',
    'https://item.kakaocdn.net/do/a1866850b14ae47d0a2fd61f409dfc057154249a3890514a43687a85e6b6cc82',
    'https://i.namu.wiki/i/RUvz9B9y0tw2umuwRJ9TeD5UmzLHoly6iQoeqdXrewnqNU7e7QxVf-uK-6zw7S9XSPijylknGOVfz-hWzcbP6w.webp',
    'https://i.namu.wiki/i/IzZNZMwZo3_qZ1fAHJ6Iu05VMyHxwOuboM-UkIx_Ggtiu9es8sq96g67ojeh23qEw-hCI4oO2STMYhKK5Vi20w.webp',
    'https://mblogthumb-phinf.pstatic.net/20160817_259/retspe_14714118890125sC2j_PNG/%C7%C7%C4%AB%C3%F2_%281%29.png?type=w800',
    'https://thumb.mtstarnews.com/06/2023/08/2023081813164067550_1.jpg/dims/optimize',
    'https://newsimg-hams.hankookilbo.com/2021/11/24/91b824b9-c15e-4ceb-88bb-59126bc8b32b.png',
  ];
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
                      thumbUrls[Random().nextInt(thumbUrls.length)]),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("UserName",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("2023/09/11"),
                    Text("2023/09/11"),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Image.network(
              imgUrls[Random().nextInt(imgUrls.length)],
              //width: 300,
              //height: 300,
              fit: BoxFit.cover,
              //"https://i.pinimg.com/736x/3f/9f/a7/3f9fa7705494a295eb47cb4d89de2f51.jpg",
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
