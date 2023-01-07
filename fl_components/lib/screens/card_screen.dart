import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://elcomercio.pe/resizer/pqoIxl4h3_Xe7ChCxxDQP8GUykk=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/66AM3SSB3ZGSJNU2TQAVJNHIWE.jpg',
              name: 'Lorem ipsum dolor sit amet.',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://elcomercio.pe/resizer/td6f1VIJTQapWzCWmbAJYpDGpGc=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/5H42F5RT2VFSFKJHRSVEKJHAHM.jpg',
              name: 'Lorem ipsum dolor sit amet.',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://as01.epimg.net/meristation/imagenes/2022/04/26/mexico/1650937584_681667_1650937697_noticia_normal.jpg',
              name: 'Lorem ipsum dolor sit amet.',
            ),
            SizedBox(height: 50),
          ],
        ));
  }
}

//'https://elcomercio.pe/resizer/pqoIxl4h3_Xe7ChCxxDQP8GUykk=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/66AM3SSB3ZGSJNU2TQAVJNHIWE.jpg'
