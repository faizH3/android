import 'package:bengkol/halaman_chat.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);
  aset(String txt, double x, var c, var fw) {
    AutoSizeText(
      txt,
      style: TextStyle(fontSize: x, color: c, fontWeight: fw),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Container(), //spasi
            ),
            Flexible(
              flex: 4,
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    Flexible(
                      flex: 2,
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: LayoutBuilder(
                          builder: (context, constraint) {
                            return Icon(
                              Icons.build_circle,
                              size: constraint.biggest.height,
                              color: Colors.blue[400],
                            );
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 5,
                      child: Container(
                        margin: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Flexible(
                              flex: 3,
                              // ignore: avoid_unnecessary_containers
                              child: Container(
                                child: const SizedBox(
                                  child: AutoSizeText(
                                    'Bengkol',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                child: SizedBox(
                                  child: AutoSizeText(
                                    'Bengkel Online',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blue[400]),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 5,
                      child: Container(),
                    ),
                  ],
                ),
              ), //icon
            ),
            Flexible(
              flex: 1,
              child: Container(), //spasi
            ),
            Flexible(
              flex: 3,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    Flexible(
                      flex: 9,
                      child: Container(
                        constraints:
                            const BoxConstraints(maxWidth: double.maxFinite),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25)),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        // color: Colors.grey,
                        // height: 45,
                        // width: 300,
                        child: LayoutBuilder(
                          builder: (context, constraint) {
                            return TextButton.icon(
                                onPressed: null,
                                icon: const Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                label: const TextField(
                                  decoration: InputDecoration(
                                      hintText: "Cari jasa layanan bengkelmu"),
                                ));
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                          constraints:
                              const BoxConstraints(maxWidth: double.maxFinite),
                          margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: LayoutBuilder(builder: (context, constraint) {
                            return Icon(
                              Icons.circle_notifications_sharp,
                              size: constraint.biggest.height,
                            );
                          })),
                      flex: 1,
                    ),
                    Flexible(
                      child: Container(
                          // child:
                          ),
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1, // spasi column
              child: Container(),
            ),
            Flexible(
              flex: 2,
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Row(
                  children: <Widget>[
                    Flexible(
                      // spasi Row
                      flex: 1,
                      child: Container(),
                    ),
                    Flexible(
                      flex: 5,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: const SizedBox(
                          child: AutoSizeText(
                            "Hallo, Eko Saputra",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      // spasi row
                      flex: 7,
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2, // spasi column
              child: Container(),
            ),
            Flexible(
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Row(
                  children: [
                    Flexible(
                      child: Container(),
                      flex: 1,
                    ),
                    Flexible(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const AutoSizeText(
                          'Pilih Layanan',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      flex: 4,
                    ),
                    Flexible(
                      child: Container(),
                      flex: 7,
                    ),
                  ],
                ),
              ),
              flex: 1,
            ),
            Flexible(
              flex: 1,
              child: Container(),
            ),
            Flexible(
              flex: 5,
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Row(
                  children: <Widget>[
                    const Spacer(
                      flex: 1,
                    ),
                    Flexible(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.blue),
                        child: Column(
                          children: [
                            Flexible(
                              // ignore: avoid_unnecessary_containers
                              child: Container(
                                child: LayoutBuilder(
                                    builder: (context, constraint) {
                                  return Icon(
                                    Icons.directions_car_filled,
                                    size: constraint.biggest.height,
                                    color: Colors.white,
                                  );
                                }),
                              ),
                            ),
                            const AutoSizeText(
                              'Ganti Oli Mobil',
                              maxFontSize: double.infinity,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      flex: 4,
                    ),
                    Flexible(
                      child: Container(),
                      flex: 1,
                    ),
                    Flexible(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.red),
                        child: Column(
                          children: <Widget>[
                            Flexible(
                              child: LayoutBuilder(
                                builder: (context, constraint) {
                                  return Icon(
                                    Icons.sports_motorsports_rounded,
                                    size: constraint.biggest.height,
                                    color: Colors.white,
                                  );
                                },
                              ),
                            ),
                            const AutoSizeText(
                              'Ganti Oli Motor',
                              maxFontSize: double.infinity,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      flex: 4,
                    ),
                    Flexible(
                      child: Container(),
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              // spasi
              flex: 6,
              child: Container(),
            ),
            Flexible(
              flex: 2,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(),
                      flex: 1,
                    ),
                    Flexible(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const AutoSizeText(
                          'News & Discounts',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      flex: 6,
                    ),
                    Flexible(
                      child: Container(),
                      flex: 6,
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 9,
              child: Container(),
            ),
            Flexible(
              // spasi
              flex: 1,
              child: Container(),
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
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const HalamanChat();
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
                                      // Navigator.pushReplacement(context,
                                      //     MaterialPageRoute(builder: (context) {
                                      //   return const HalamanChat();
                                      // }));
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
              // spasi
              flex: 2,
              child: Container(
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                // color: Colors.red,
                child: Row(
                  children: [
                    Flexible(
                      child: Container(),
                      flex: 1,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                          // color: Colors.red,
                          // width: MediaQuery.of(context).size.width,
                          // child: SizedBox(
                          //   child: LayoutBuilder(builder: (context, constraint) {
                          //     return Icon(
                          //       Icons.home,
                          //       size: constraint.biggest.height,
                          //     );
                          //   }),
                          // ),
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
