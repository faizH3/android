import 'package:bengkol/login.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HalamanChat extends StatelessWidget {
  const HalamanChat({Key? key}) : super(key: key);
  // responsive method
  // setting icon
  respon_icon(var x, int flx, var name_ico, var sz) {
    Flexible(
        child: Container(
          child: LayoutBuilder(builder: (context, constraint) {
            return Icon(
              name_ico,
              size: sz,
            );
          }),
        ),
        flex: flx);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Flexible(
              flex: 5,
              child: Container(), // spasi c1
            ),
            Flexible(
              flex: 1,
              // ignore: avoid_unnecessary_containers
              child: Container(
                  child: const SizedBox(
                child: AutoSizeText(
                  'Chat',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),
            ),
            Flexible(
              flex: 1,
              child: Container(), // spasi c1
            ),
            Flexible(
              flex: 23,
              child: Container(
                // mengatur container kumpulan chat
                child: Row(
                  children: [
                    Flexible(child: Container(), flex: 1),
                    Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.grey[200]),
                          // column
                          child: Column(
                            children: [
                              Flexible(
                                  child:
                                      Container()), // 1fjarak dengan container besar
                              Flexible(child: Container()), // 1fnama bengkel
                              Flexible(child: Container()), // 2fchat
                              Flexible(
                                  child: Container()), // 1fjarak antar chat
                              Flexible(child: Container()), // 2fchat
                              Flexible(child: Container()), // 16f
                            ],
                          ),
                        ),
                        flex: 15),
                    Flexible(
                        child: Container(),
                        flex: 1), //jarak container besar ke tepi
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(), // spasi
            ),
            Flexible(
              flex: 3,
              child: Container(
                child: Row(
                  children: [
                    Flexible(child: Container(), flex: 1), // spasi
                    Flexible(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey[350]),
                          child: const TextField(
                            decoration:
                                InputDecoration(hintText: 'Ketik pesan'),
                          ),
                        ),
                        flex: 13),
                    Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: IconButton(
                              onPressed: null,
                              icon:
                                  LayoutBuilder(builder: (context, constraint) {
                                return Icon(
                                  Icons.send,
                                  size: constraint.maxHeight,
                                  color: Colors.blue,
                                );
                              })),
                        ),
                        flex: 2),
                    Flexible(child: Container(), flex: 1), // spasi
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(), // spasi
            ),
            Flexible(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.grey[350]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: Column(
                          children: [
                            Flexible(
                              flex: 1,
                              child: LayoutBuilder(
                                builder: (context, constraint) {
                                  return IconButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const LoginApp();
                                      }));
                                    },
                                    icon: Icon(
                                      Icons.home_filled,
                                      size: constraint.biggest.height,
                                    ),
                                  );
                                },
                              ),
                            ),
                            const Flexible(
                              flex: 1,
                              child: AutoSizeText(
                                'Beranda',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: Column(
                          children: [
                            Flexible(
                              flex: 1,
                              child: LayoutBuilder(
                                builder: (context, constraint) {
                                  return IconButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const HalamanChat();
                                      }));
                                    },
                                    icon: Icon(
                                      Icons.chat_bubble,
                                      size: constraint.biggest.height,
                                    ),
                                  );
                                },
                              ),
                            ),
                            const Flexible(
                              flex: 1,
                              child: AutoSizeText(
                                'Chat',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: Column(
                          children: [
                            Flexible(
                              flex: 1,
                              child: LayoutBuilder(
                                builder: (context, constraint) {
                                  return IconButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const HalamanChat();
                                      }));
                                    },
                                    icon: Icon(
                                      Icons.business_center_outlined,
                                      size: constraint.biggest.height,
                                    ),
                                  );
                                },
                              ),
                            ),
                            const Flexible(
                              flex: 1,
                              child: AutoSizeText(
                                'Layanan',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: Column(
                          children: [
                            Flexible(
                              flex: 1,
                              child: LayoutBuilder(
                                builder: (context, constraint) {
                                  return IconButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const HalamanChat();
                                      }));
                                    },
                                    icon: Icon(
                                      Icons.account_box_rounded,
                                      size: constraint.biggest.height,
                                    ),
                                  );
                                },
                              ),
                            ),
                            const Flexible(
                              flex: 1,
                              child: AutoSizeText(
                                'Akun',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(), // spasi c1
            ),
          ],
        ),
      ),
    );
  }
}
