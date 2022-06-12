import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/account.dart';
import 'package:flutter_application_6/chat.dart';
import 'package:flutter_application_6/layanan.dart';
import 'package:flutter_application_6/mobil.dart';
import 'package:flutter_application_6/motor.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  animat_contain() {
    setState(() {});
    if (OnTap != null) {
      AnimatedContainer(
        duration: Duration(seconds: 1),
        color: Colors.red,
      );
    } else {
      AnimatedContainer(
        duration: Duration(seconds: 1),
        color: Colors.green,
      );
    }
  }

  // Notifikasi
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Notifikasi'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Maaf, anda belum ada notifikasi'),
                Text(''),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('keluar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
            border: Border(
              left: BorderSide(
                  width: 0, style: BorderStyle.none, color: Color(0xFFFFFFFF)),
              top: BorderSide(
                  width: 0, style: BorderStyle.none, color: Color(0xFFFFFFFF)),
              right: BorderSide(
                  width: 0, style: BorderStyle.none, color: Color(0xFFFFFFFF)),
              bottom: BorderSide(
                  width: 0, style: BorderStyle.none, color: Color(0xFFFFFFFF)),
            ),
          ),
          child: SafeArea(
            left: false,
            top: true,
            right: false,
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    r'''https://sibksuxmtloxlwgvmnly.supabase.co/storage/v1/object/public/public/bengkol/assets/logo_atas.png''',
                    fit: BoxFit.contain,
                    width: 150,
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 120,
                      top: 20,
                    ),
                    child: TextButton(
                      onPressed: () async {
                        _showMyDialog();
                      },
                      onLongPress: () async {},
                      child: Badge(
                        badgeContent: Text(
                          '0',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                        ),
                        badgeColor: const Color(0xFFFF5454),
                        child: const Icon(
                          Icons.circle_notifications,
                          // MdiIcons.fromString('bell-circle'),
                          size: 50,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
              border: Border(
                left: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000)),
                top: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000)),
                right: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000)),
                bottom: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000)),
              ),
            ),
            child: SafeArea(
              left: false,
              top: false,
              right: false,
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 16,
                        top: 8,
                        right: 16,
                        bottom: 8,
                      ),
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        border: null,
                      ),
                      child: TextField(
                        onChanged: (String value) async {
                          // setState(() {});
                          // animat_contain();
                        },
                        onSubmitted: (String value) async {},
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          hintText: r'''Cari layanan Anda''',
                          contentPadding: EdgeInsets.only(
                            left: 16,
                          ),
                        ),
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        maxLines: 1,
                        minLines: 1,
                        maxLength: null,
                        obscureText: false,
                        showCursor: true,
                        autocorrect: false,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.zero,
                    child: SizedBox(
                      width: double.maxFinite,
                      height: 150,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 17,
                                top: 20,
                                right: 10,
                              ),
                              child: Container(
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.zero,
                                width: double.maxFinite,
                                height: 90,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF4285F4),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  border: Border(
                                    left: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color: Color(0xFF000000)),
                                    top: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color: Color(0xFF000000)),
                                    right: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color: Color(0xFF000000)),
                                    bottom: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color: Color(0xFF000000)),
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () async {
                                    await Navigator.push<void>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Mobil(),
                                      ),
                                    );
                                  },
                                  onLongPress: () async {},
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.zero,
                                        child: Center(
                                          child: Icon(
                                            Icons.directions_car_rounded,
                                            // MdiIcons.fromString('car-wrench'),
                                            size: 60,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(r'''Ganti Oli Mobil''',
                                            style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.center,
                                            textDirection: TextDirection.ltr,
                                            maxLines: 1),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 20,
                                right: 17,
                              ),
                              child: Container(
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.zero,
                                width: double.maxFinite,
                                height: 90,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFF5454),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  border: Border(
                                    left: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color: Color(0xFF000000)),
                                    top: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color: Color(0xFF000000)),
                                    right: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color: Color(0xFF000000)),
                                    bottom: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color: Color(0xFF000000)),
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () async {
                                    await Navigator.push<void>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Motor(),
                                      ),
                                    );
                                  },
                                  onLongPress: () async {},
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.zero,
                                        child: Center(
                                          child: Icon(
                                            Icons.motorcycle,
                                            // MdiIcons.fromString('motorbike'),
                                            size: 60,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(r'''Ganti Oli Motor''',
                                            style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            textDirection: TextDirection.ltr,
                                            maxLines: 1),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 17,
                      top: 10,
                    ),
                    child: Text(r'''News & Discount''',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        maxLines: 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 12,
                      right: 12,
                    ),
                    child: Container(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      width: double.maxFinite,
                      height: 360,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border: Border(
                          left: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: Color(0xFF000000)),
                          top: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: Color(0xFF000000)),
                          right: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: Color(0xFF000000)),
                          bottom: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: Color(0xFF000000)),
                        ),
                      ),
                      child: Lottie.network(
                        r'''https://assets5.lottiefiles.com/packages/lf20_eumbc4ta.json''',
                        width: double.maxFinite,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // BottomBar
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                ),
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                    top: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 5,
                    right: 5,
                    bottom: 5,
                  ),
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF0F0F0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                    border: Border(
                      left: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                          color: Color(0xFF000000)),
                      top: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                          color: Color(0xFF000000)),
                      right: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                          color: Color(0xFF000000)),
                      bottom: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  child: SafeArea(
                    left: false,
                    top: false,
                    right: false,
                    bottom: false,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: GestureDetector(
                              onTap: () async {},
                              onLongPress: () async {},
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.home_filled,
                                    // MdiIcons.fromString('home-variant'),
                                    size: 35,
                                    color: Color(0xFF4285F4),
                                  ),
                                  Text(
                                    'Beranda',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                  )
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: GestureDetector(
                              onTap: () async {
                                await Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const PageChat(),
                                  ),
                                );
                              },
                              onLongPress: () async {},
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.message,
                                    // MdiIcons.fromString('message'),
                                    size: 35,
                                    color: Color(0xFF939393),
                                  ),
                                  Text(
                                    'Chat',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.ltr,
                                  )
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: GestureDetector(
                              onTap: () async {
                                await Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Layanan(),
                                  ),
                                );
                              },
                              onLongPress: () async {},
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.featured_play_list,
                                    size: 35,
                                    color: Color(0xFF939393),
                                  ),
                                  Text(
                                    'Layanan',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                  )
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: GestureDetector(
                              onTap: () async {
                                await Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const PageAccount(),
                                  ),
                                );
                              },
                              onLongPress: () async {},
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.account_box,
                                    size: 35,
                                    color: Color(0xFF939393),
                                  ),
                                  Text(
                                    'Akun',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

// class mobil
// class ToMobil extends StatefulWidget {
//   const ToMobil({super.key});

//   @override
//   State<ToMobil> createState() => _ToMobilState();
// }

// class _ToMobilState extends State<ToMobil> {
//   Future<FirebaseApp> _initializeFirebase() async {
//     FirebaseApp firebaseApp = await Firebase.initializeApp();
//     return firebaseApp;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: _initializeFirebase(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return const Mobil();
//           }
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         },
//       ),
//     );
//   }
// }

// class motor
// class ToMotor extends StatefulWidget {
//   const ToMotor({super.key});

//   @override
//   State<ToMotor> createState() => _ToMotorState();
// }

// class _ToMotorState extends State<ToMotor> {
//   Future<FirebaseApp> _initializeFirebase() async {
//     FirebaseApp firebaseApp = await Firebase.initializeApp();
//     return firebaseApp;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: _initializeFirebase(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return const Motor();
//           }
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         },
//       ),
//     );
//   }
// }
