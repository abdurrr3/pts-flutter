// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names
import 'package:flutter/material.dart';

class Detailhhhhhhhh extends StatefulWidget {
  @override
  State<Detailhhhhhhhh> createState() => _DetailhhhhhhhhState();
}

class _DetailhhhhhhhhState extends State<Detailhhhhhhhh> {
  int selectedIndex = -1;

  Widget lists(int index, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only( top: 16, left: 15),
        child: Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              title,
              style: TextStyle(
                color: selectedIndex == index ? Color(0xff00B14F) : Colors.grey[700],
              ),
            ),
          ]),
          width: 53,
          height: 49,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(
                color:
                    selectedIndex == index ? Color(0xff00B14F) : Colors.grey),
            color: selectedIndex == index ? Color.fromARGB(255, 195, 245, 218) : Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black, // Atur latar belakang transparan
        elevation: 0, // Hilangkan bayangan di bawah AppBar // Judul AppBar
        title: Center(
          child: Text(
            'Detail Produk',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.heart_broken,
                  color: Colors.red,
                  size: 26, // Atur ukuran ikon notifikasi
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7, right: 24, left: 24),
            child: Image.asset('assets/sepatu.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 24),
            child: Column(
              children: [
                Text(
                  'New Balance 992 Grey Original',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 11),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text('4.8'),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '(102) | 67 ulasan',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 14),
                child: RichText(
                  text: TextSpan(
                      text:
                          'Our Made US 992 mens sneaker has heritage\nstyling, premium materials and comfort features to\nelevate your off-duty look. These mens fashion\nsneakers have a pigskin...',
                      style: TextStyle(color: Colors.grey[600]),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'baca selengkapnya',
                          style: TextStyle(color: Color(0xff00B14F)),
                        ),
                      ]),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, top: 17),
            child: Column(
              children: [
                Text(
                  'Pilih Ukuran',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                lists(0, '39'),
                lists(1, '40'),
                lists(2, '41'),
                lists(3, '42'),
                lists(3, '43'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Rp1.240.000'),
                Container(
                  child:
                      Center(child: Text('Tambah Keranjang', style:  TextStyle(
                        color: Colors.white
                      ),)),
                  width: 183,
                  height: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Color(0xff00B14F)
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
