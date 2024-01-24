import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final images = [
    'https://user0514.cdnw.net/shared/img/thumb/domain458A0936_TP_V.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://blogdesign-lab.com/wp-content/uploads/yuseiookawa1971944_TP_V-1280x853.jpg.webp',
    'https://news.value-press.com/wp-content/uploads/interview_top_image_pakutaso.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Row(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/3621/3621435.png',
                  width: 100,
                  height: 100,
                ),
                const Spacer(),
                const Column(
                  children: [
                    Text(
                      '7,041',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text('投稿'),
                  ],
                ),
                const SizedBox(width: 16),
                const Column(
                  children: [
                    Text(
                      '4.6億',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text('フォロワー'),
                  ],
                ),
                const SizedBox(width: 16),
                const Column(
                  children: [
                    Text(
                      '99',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text('フォロー中'),
                  ],
                ),
                const SizedBox(width: 8),
              ],
            ),
            const Text(
              'Instagram',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const Text(
              '#YoursToMake',
              style: TextStyle(
                color: Colors.blue
              ),
            ),
            const Text(
              'help.instagram.com',
              style: TextStyle(
                color: Colors.blue
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children:[
                      Expanded(
                        child: OutlinedButton(
                          onPressed: (){},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )
                          ),
                          child: const Text(
                            'フォロー中',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            )
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: (){},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )
                          ),
                          child: const Text(
                            'メッセージ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 4),
                OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
                  ),
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              crossAxisCount: 3,
              children: images.map((imageUrl) {
                return InstagramPostItem(imageUrl: imageUrl);
              }).toList(),
            ), 
          ],
        ),
      ),
    );
  }
}

class InstagramPostItem extends StatelessWidget {
   const InstagramPostItem({super.key, required this.imageUrl});
 
   final String imageUrl;
 
   @override
   Widget build(BuildContext context) {
     return Image.network(
       imageUrl,
       fit: BoxFit.cover,
     );
   }
 }
