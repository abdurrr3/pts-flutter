// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names
import 'package:flutter/material.dart';

class carthhh extends StatefulWidget {
  @override
  State<carthhh> createState() => _carthhhState();
}

class _carthhhState extends State<carthhh> {
  int sepatu = 1;
  int kacamata = 1;
  int hoodie = 1;
  int harga_sepatu = 1240000;
  int harga_kacamata = 450000;
  int harga_hoodie = 1659000;
  int ongkir = 14000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Center(
          child: Text(
            'Keranjang',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                  size: 26, // Atur ukuran ikon notifikasi
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Image.asset(
              'assets/Group 1 (1).png',
              height: 100,
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Image.asset('assets/sepatu (2).png'),
                SizedBox(width: 12),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New Balance 992...',
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '40',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Rp.${harga_sepatu * sepatu}',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                if (sepatu > 0) {
                                  setState(() {
                                    sepatu = sepatu - 1;
                                  });
                                }
                              },
                              child: Image.asset(
                                'assets/minus.png',
                                height: 22,
                              )),
                          SizedBox(
                            width: 8,
                          ),
                          Text(sepatu.toString()),
                          SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (sepatu < harga_sepatu - 1) {
                                setState(() {
                                  sepatu = sepatu + 1;
                                });
                              }
                            },
                            child: Image.asset(
                              'assets/plus.png',
                              height: 22,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset('assets/kacamata2.png'),
                SizedBox(width: 12),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kacamata Baca...',
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '-2, Hitam',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Rp.${harga_kacamata * kacamata}',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                if (kacamata > 0) {
                                  setState(() {
                                    kacamata = kacamata - 1;
                                  });
                                }
                              },
                              child: Image.asset(
                                'assets/minus.png',
                                height: 22,
                              )),
                          SizedBox(
                            width: 8,
                          ),
                          Text(kacamata.toString()),
                          SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (kacamata < harga_kacamata - 1) {
                                setState(() {
                                  kacamata = kacamata + 1;
                                });
                              }
                            },
                            child: Image.asset(
                              'assets/plus.png',
                              height: 22,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset('assets/hoodie (2).png'),
                SizedBox(width: 12),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Human Greatness...',
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'XL, Hitam',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Rp.${harga_hoodie * hoodie}',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                if (hoodie > 0) {
                                  setState(() {
                                    hoodie = hoodie - 1;
                                  });
                                }
                              },
                              child: Image.asset(
                                'assets/minus.png',
                                height: 22,
                              )),
                          SizedBox(
                            width: 8,
                          ),
                          Text(hoodie.toString()),
                          SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (hoodie < harga_hoodie - 1) {
                                setState(() {
                                  hoodie = hoodie + 1;
                                });
                              }
                            },
                            child: Image.asset(
                              'assets/plus.png',
                              height: 22,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sub Total', style: TextStyle(
                  color: Colors.grey[600]
                ),),
                Text(
                    '${(harga_hoodie * hoodie) + (harga_kacamata * kacamata) + (harga_sepatu * sepatu)}')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Ongkir', style: TextStyle(
                color: Colors.grey[600]
              ),), Text('$ongkir')],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total', style: TextStyle(
                  color: Colors.grey[600]
                ),),
                Text(
                    '${(ongkir) + (harga_hoodie * hoodie) + (harga_kacamata * kacamata) + (harga_sepatu * sepatu)}')
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                 height: 47,
                    width: 380,
                decoration: BoxDecoration(                 
                    color: Color(0xff00B14F),
                    borderRadius: BorderRadius.circular(9)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Tambah Keranjang', style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
