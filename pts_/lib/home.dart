// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:pts_/Detail.dart';
import 'package:pts_/cart.dart';
// import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = -1;

  Widget lists(int index, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 5, top: 16, left: 5),
        child: Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              title,
              style: TextStyle(
                color: selectedIndex == index ? Colors.white : Colors.grey[700],
              ),
            ),
          ]),
          width: 101,
          height: 43,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
                  color:
                      selectedIndex == index ? Color(0xff00B14F) : Colors.grey),
              color: selectedIndex == index ? Color(0xff00B14F) : Colors.white,),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 283, // Atur lebar Container
          height: 48, // Atur tinggi Container
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(39)),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.black,
                size: 26, // Atur ukuran ikon pencarian
              ), // Ikon pencarian
              SizedBox(width: 8), // Jarak antara ikon pencarian dan teks
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Cari Pakaian Pria", border: InputBorder.none),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.notifications_outlined,
                color: Colors.black,
                size: 26, // Atur ukuran ikon notifikasi
              ), // Ikon notifikasi
              SizedBox(
                width: 8,
              ), // Jarak antara ikon notifikasi dan ikon tempat sampah (delete)
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => carthhh()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.black,
                    size: 26, // Atur ukuran ikon tempat sampah (delete)
                  ),
                ),
              ), // Ikon tempat sampah (delete)
            ],
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
            child: Container(
              width: 382, // Lebar maksimum
              height: 220, // Tinggi kontainer
              decoration: BoxDecoration(
                color: Color(0xffDBCCF3),
                borderRadius:
                    BorderRadius.circular(12.0), // Border radius sebesar 12.0
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tanggal Tua Hemat",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff292D32)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Flash Sale Serba",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff292D32)),
                        ),
                        Text(
                          "RP50 ribuan",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff292D32)),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          "S&K Berlaku",
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kategori',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(color: Color(0xff00B14F)),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                lists(0, 'Semua'),
                lists(1, 'Kemeja'),
                lists(2, 'Sepatu'),
                lists(3, 'Akses'),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Produk('assets/kemeja.png', 'Batik Pria Lengan\nPanjang',
                  'Rp199.900'),
              Produk('assets/sepatu (3).png', 'New Balance 992\nGrey Original',
                  'Rp1.240.000')
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Produk('assets/celana.png', 'Skinny Jeans Dark\nWanita',
                  'Rp379.900'),
              Produk('assets/kacamata.png',
                  'Kacamata Baca\nAnti Radiasi Blue Ray', 'Rp125.00')
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Produk('assets/kemeja (2).png',
                  'Kemeja Pria Polos\nLengan Pendek Oxford', 'Rp199.900'),
              Produk('assets/hoodie.png', 'Human Greatness\nHoodie Hitam',
                  'Rp229.000')
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_rounded), label: 'beranda'),
          BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken), label: 'Favorit'),
              BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken), label: 'Favorit'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_tree_outlined), label: 'Transaksi'),
        ],
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
      ), 
    );
  }

  Widget Produk(String imagePath, String namaprdk, String harga) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Detailhhhhhhhh()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 147,
              width: 147,
            ),
            SizedBox(
              height: 12,
            ),
            Text(namaprdk),
            SizedBox(
              height: 12,
            ),
            Text(
              harga,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
