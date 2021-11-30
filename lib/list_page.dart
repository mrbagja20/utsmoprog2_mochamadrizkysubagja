import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:uts_instax_mrizky/deskripsi_item/mint.page.dart';


class ListScreen extends StatefulWidget {

 
  ListScreen ({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState(); 

  }

class _ListScreenState extends State<ListScreen> {

  final TextEditingController _searchController = new
TextEditingController();
final List<String> _originList = [
  "Instax Mini Mint 7+",
  "Instax Mini Blue 7+",
  "Instax Mini Pink 7+",
  "Instax Mini Lavender 7+",
  "Instax Mini Choral 7+",
];
List<String> _filteredList = [];
String _keyword = '';

  get asset => null;

@override
Widget build(BuildContext context) {
  return Scaffold(
     backgroundColor: Colors.white, //memberikan warna pada bg
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.deepOrange,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        centerTitle: true,
        title: Image.asset(
          'asset/fujifilm-banner.png',
          width: 115,
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
 
body: ListView(
        children: [
          Padding( //padding pertama produk instax yang mint
            padding: const EdgeInsets.only(left: 7, right: 42, top: 8),
            child: FittedBox(
              child: Material(
                color: Color(0xFF70b1a1), //menambahkan warna pada shape padding
                borderRadius: BorderRadius.circular(20.0), //memberi border radius atau membuat sisi shape nya melengkung
                elevation: 0,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 3,
                              ),
                              child: Text( //membuat text disebelah kiri gambar produk
                                "Limited Edition",
                                style: TextStyle(
                                    fontSize: 7.0, color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Instax',
                              style: TextStyle(
                                  fontSize: 7.0, //memberikan ukuran huruf untuk kata instax.
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                  text: ' Mini Mint 7+',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 7.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            //),
                            //);
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: '\$ 49.90',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            //);
                            ),
                          ),
                          SizedBox(height: 5.0), //membuat box dengan ukuran
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, //memberikan warna pada elevatedButton nya.
                              onPrimary: Color(0xFF70b1a1), //ini warna untuk tulisan di dalam button.
                              padding: const EdgeInsets.symmetric(
                                horizontal: 7.0,
                                vertical: 7.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              elevation: 0,
                            ),
                            onPressed: () { //untuk hyperlink button nya agar ketika di klik pindah ke page deskripsi produk.
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                  return Instax7Mint(context); //Instax7Mint adalah nama dari class di page deskripsi produk.
                              }));
                            },
                            child: Text(
                              'Buy',
                            ),
                          ),
                        ],
                      ),
                      // ),
                    ),
                     Container( //membuat container untuk gambarnya.
                        width: 70.5,
                        height: 70.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Image(
                            image: AssetImage('asset/InstaxMini7plus_Mint_R.png'),
                            fit: BoxFit.cover,
                            alignment: Alignment.centerRight
                          ),
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ),


          Padding( //padding kedua produk instax yang mint
            padding: const EdgeInsets.only(left: 7, right: 42, top: 8),
            child: FittedBox(
              child: Material(
                color: Color(0xFF77a0c6), //menambahkan warna pada shape padding
                borderRadius: BorderRadius.circular(20.0), //memberi border radius atau membuat sisi shape nya melengkung
                elevation: 0,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 3,
                              ),
                              child: Text( //membuat text disebelah kiri gambar produk
                                "Limited Edition",
                                style: TextStyle(
                                    fontSize: 7.0, color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Instax',
                              style: TextStyle(
                                  fontSize: 7.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                  text: ' Mini Blue 7+',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 7.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            //),
                            //);
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: '\$ 50.90',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            //);
                            ),
                          ),
                          SizedBox(height: 5.0), //membuat box dengan ukuran
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, //memberikan warna pada elevatedButton nya.
                              onPrimary: Color(0xFF70b1a1), //ini warna untuk tulisan di dalam button.
                              padding: const EdgeInsets.symmetric(
                                horizontal: 7.0,
                                vertical: 7.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              elevation: 0,
                            ),
                            onPressed: () { //untuk hyperlink button nya agar ketika di klik pindah ke page deskripsi produk.
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return Instax7Mint(context); //Instax7Blue adalah nama dari class di page deskripsi produk.
                              }));
                            },
                            child: Text(
                              'Buy',
                            ),
                          ),
                        ],
                      ),
                      // ),
                    ),
                     Container(
                        width: 70.5,
                        height: 70.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Image(
                            image: AssetImage('asset/InstaxMini7plus_Blue_R.png'),
                            fit: BoxFit.cover,
                            alignment: Alignment.centerRight
                          ),
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ),          
          
          Padding( //padding ketiga produk instax yang mint
            padding: const EdgeInsets.only(left: 7, right: 42, top: 8),
            child: FittedBox(
              child: Material(
                color: Color(0xFFb0463c), //menambahkan warna pada shape padding
                borderRadius: BorderRadius.circular(20.0), //memberi border radius atau membuat sisi shape nya melengkung
                elevation: 0,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 3,
                              ),
                              child: Text( //membuat text disebelah kiri gambar produk
                                "Limited Edition",
                                style: TextStyle(
                                    fontSize: 7.0, color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Instax',
                              style: TextStyle(
                                  fontSize: 7.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                  text: ' Mini Choral 7+',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 7.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            //),
                            //);
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: '\$ 51.90',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            //);
                            ),
                          ),
                          SizedBox(height: 5.0), //membuat box dengan ukuran
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, //memberikan warna pada elevatedButton nya.
                              onPrimary: Color(0xFF70b1a1), //ini warna untuk tulisan di dalam button.
                              padding: const EdgeInsets.symmetric(
                                horizontal: 7.0,
                                vertical: 7.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              elevation: 0,
                            ),
                            onPressed: () { //untuk hyperlink button nya agar ketika di klik pindah ke page deskripsi produk.
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return Instax7Mint(context); //Instax7Mint adalah nama dari class di page deskripsi produk.
                              }));
                            },
                            child: Text(
                              'Buy', 
                            ),
                          ),
                        ],
                      ),
                      // ),
                    ),
                    Container(
                        width: 70.5,
                        height: 70.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Image(
                            image: AssetImage('asset/InstaxMini7plus_Choral_R.png'),
                            fit: BoxFit.cover,
                            alignment: Alignment.centerRight
                          ),
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          
          Padding( //padding keempat produk instax yang mint
            padding: const EdgeInsets.only(left: 7, right: 42, top: 8),
            child: FittedBox(
              child: Material(
                color: Color(0xFF855f8c), //menambahkan warna pada shape padding
                borderRadius: BorderRadius.circular(20.0), //memberi border radius atau membuat sisi shape nya melengkung
                elevation: 0,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 3,
                              ),
                              child: Text( //membuat text disebelah kiri gambar produk
                                "Limited Edition",
                                style: TextStyle(
                                    fontSize: 7.0, color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Instax',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                  text: ' Mini Lavender 7+',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            //),
                            //);
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: '\$ 52.90',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            //);
                            ),
                          ),
                          SizedBox(height: 5.0), //membuat box dengan ukuran
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, //memberikan warna pada elevatedButton nya.
                              onPrimary: Color(0xFF70b1a1), //ini warna untuk tulisan di dalam button.
                              padding: const EdgeInsets.symmetric(
                                horizontal: 7.0,
                                vertical: 7.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              elevation: 0,
                            ),
                            onPressed: () { //untuk hyperlink button nya agar ketika di klik pindah ke page deskripsi produk.
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return Instax7Mint(context); //Instax7Mint adalah nama dari class di page deskripsi produk.
                              }));
                            },
                            child: Text(
                              'Buy',
                            ),
                          ),
                        ],
                      ),
                      // ),
                    ),
                     Container(
                        width: 70.5,
                        height: 70.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Image(
                            image: AssetImage('asset/InstaxMini7plus_Lavender_R.png'),
                            fit: BoxFit.cover,
                            alignment: Alignment.centerRight
                          ),
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ),


          Padding( //padding kelima produk instax yang mint
            padding: const EdgeInsets.only(left: 7, right: 42, top: 8),
            child: FittedBox(
              child: Material(
                color: Color(0xFFfcf9496), //menambahkan warna pada shape padding
                borderRadius: BorderRadius.circular(20.0), //memberi border radius atau membuat sisi shape nya melengkung
                elevation: 0,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 3,
                              ),
                              child: Text( //membuat text disebelah kiri gambar produk
                                "Limited Edition",
                                style: TextStyle(
                                    fontSize: 7.0, color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Instax',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                  text: ' Mini Pink 7+',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            //),
                            //);
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: '\$ 53.90',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            //);
                            ),
                          ),
                          SizedBox(height: 3.0), //membuat box dengan ukuran
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, //memberikan warna pada elevatedButton nya.
                              onPrimary: Color(0xFF70b1a1), //ini warna untuk tulisan di dalam button.
                              padding: const EdgeInsets.all(16),
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.5),
                    ),
                      elevation: 0,
                    ),
                            onPressed: () { //untuk hyperlink button nya agar ketika di klik pindah ke page deskripsi produk.
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return Instax7Mint(context); //Instax7Mint adalah nama dari class di page deskripsi produk.
                              }));
                            },
                            child: Text(
                              'Buy',
                            ),
                          ),
                        ],
                      ),
                    ),
                        Container(
                        width: 70.5,
                        height: 70.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Image(
                            image: AssetImage('asset/InstaxMini7plus_Pink_R.png'),
                            fit: BoxFit.cover,
                            alignment: Alignment.centerRight
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),

          
                ],
                ),
             // ),),
            //),

    
  );
} 
  }