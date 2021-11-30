import 'package:flutter/material.dart';

class Instax7Mint extends StatelessWidget { //membuat nama class, dan yang nantinya akan dipanggil di list_page.dart
  const Instax7Mint(BuildContext context, 
  {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        backgroundColor: Colors.white, //menambahkan warna pada latar belakang AppBar
        leading: Container(
          margin: const EdgeInsets.all(7.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(0xFF70b1a1),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
),
        centerTitle: true,
        title: Image.asset(
          'asset/fujifilm-banner.png',
          width: 100,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(6.0),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.black),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(height: 15.0),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'asset/InstaxMini7plus_Mint_R.png',
                width: 250,
                
              ),
            ),
            const SizedBox(height: 28.0),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Instax ',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Mini Mint 7+',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF70b1a1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6.5),
            const Text(
              'Be real and fun with the INSTAX MINI 7+ Cool design, colorful and compact, this instant camera is fun and esay to use. Point and shoot and girve your day some fun!',
            ),
            const SizedBox(height: 6.5),
            const Text(
              'Point & Shoot',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6.5),
            const Text(
              'The Mini 7+ is esay to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed focus lens, the Mini 7+ makes it esay for you to be creative and live in the moment.',
            ),
            const SizedBox(height: 6.5),
            const Text(
              'Mini But With Full-Size Memories',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6.5),
            const Text(
              'Pop it in your wallet, stick it to your wall-the INSTAX Mini film brings you instant 2 x 3 sized photos you can show and tell.\n\nUsing professional hight-quality film technology (as you\'d expect from m Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.',
            ),
            const SizedBox(height: 6.5),
            const Text(
              'Mini Film',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6.5),
            const Text(
              'Mini moments with maximum impact. What’s your next mini moment?',
            ),
            const SizedBox(height: 6.5),
            const Text(
              'Plenty of Great Color Choices',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6.5),
            const Text(
              'Available in five awesome colors: Lavender, Seafoam Green, Coral, Light Pink & Light Blue',
            ),
            const SizedBox(height: 8.0),
            const Text(
              'The Mini 7+ Has Your Back!',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6.5),
            const Text(
              'Depending upon the weather conditions, you can easily control brightness to obtain a great picture',
            ),
            const SizedBox(height: 6.5),
            const Text(
              'Fun All The Time!',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6.5),
            const Text(
              'Live in the moment and enjoy your Mini 7+, and give your day some instant fun!',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15.0),
        height: 80,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey[500]!,
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$ 49.90',
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text('Made with ❤ from Ky'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF70b1a1),
                padding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 0,
              ),
              onPressed: () {},
              child: const Text(
                'Buy Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
}
