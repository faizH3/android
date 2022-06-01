import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Flexible(child: Container(), flex: 1),
            Flexible(
                child: Container(
                  child: Column(
                    children: [
                      // spasi
                      Flexible(child: Container(), flex: 5),

                      // masuk
                      Flexible(
                          child: Container(
                            child: Row(
                              children: [
                                Flexible(
                                    child: Container(
                                      child: Container(
                                        child: LayoutBuilder(
                                            builder: ((context, constraints) {
                                          return Text(
                                            'Masuk',
                                            style: DefaultTextStyle.of(context)
                                                .style
                                                .apply(
                                                    fontWeightDelta: 400,
                                                    fontSizeFactor: constraints
                                                            .biggest.height /
                                                        18),
                                          );
                                        })),
                                      ),
                                    ),
                                    flex: 11),
                                Flexible(child: Container(), flex: 1),
                              ],
                            ),
                          ),
                          flex: 2),

                      // selesaikan langkah ini untuk masuk
                      Flexible(
                          child: Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              LayoutBuilder(builder: (context, constraints) {
                                return Text(
                                  'Selesaikan langkah ini untuk masuk',
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .apply(
                                          fontSizeFactor:
                                              constraints.biggest.height / 14),
                                );
                              }),
                            ],
                          )),
                          flex: 1),

                      // spasi
                      Flexible(child: Container(), flex: 6),

                      // contain
                      Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.grey[300]),
                            child: Column(
                              children: [
                                // spasi
                                Flexible(child: Container(), flex: 2),

                                // email anda
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(child: Container(), flex: 1),
                                      Flexible(
                                        flex: 9,
                                        child: Text(
                                          'Email Anda',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      Flexible(child: Container(), flex: 1),
                                    ],
                                  ),
                                ),

                                // input email
                                Container(
                                  child: Row(children: [
                                    Flexible(child: Container(), flex: 1),
                                    Flexible(
                                        child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            height: 45,
                                            // width: MediaQuery.of(context)
                                            //     .size
                                            //     .width,
                                            // height: MediaQuery.of(context)
                                            //     .size
                                            //     .height,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                color: Colors.grey),
                                            child: TextField(
                                              controller: null,
                                              decoration: InputDecoration(
                                                  hintText:
                                                      'Masukan email anda',
                                                  hintStyle: TextStyle(
                                                    fontSize: 14,
                                                  )),
                                            )),
                                        flex: 9),
                                    Flexible(child: Container(), flex: 1),
                                  ]),
                                ),
                                // flex: 2),

                                // spasi
                                Flexible(child: Container(), flex: 3),

                                // password anda
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(child: Container(), flex: 1),
                                      Flexible(
                                        flex: 9,
                                        child: Text(
                                          'Password Anda',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      Flexible(child: Container(), flex: 1),
                                    ],
                                  ),
                                ),

                                // input password
                                Container(
                                  child: Row(children: [
                                    Flexible(child: Container(), flex: 1),
                                    Flexible(
                                        child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            height: 45,
                                            // width: MediaQuery.of(context)
                                            //     .size
                                            //     .width,
                                            // height: MediaQuery.of(context)
                                            //     .size
                                            //     .height,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                color: Colors.grey),
                                            child: TextField(
                                              controller: null,
                                              decoration: InputDecoration(
                                                  hintText: 'Password',
                                                  hintStyle: TextStyle(
                                                    fontSize: 14,
                                                  )),
                                            )),
                                        flex: 9),
                                    Flexible(child: Container(), flex: 1),
                                  ]),
                                ),

                                // lupa password
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Flexible(child: Container(), flex: 1),
                                      Flexible(
                                        flex: 9,
                                        child: Text(
                                          'Lupa Password?',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      Flexible(child: Container(), flex: 1),
                                    ],
                                  ),
                                ),

                                // spasi
                                Flexible(child: Container(), flex: 3),

                                // button masuk
                                Row(
                                  children: [
                                    Flexible(flex: 1, child: Container()),
                                    Flexible(
                                      flex: 9,
                                      child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              color: Colors.blue),
                                          child: MaterialButton(
                                            onPressed: null,
                                            child: Text(
                                              'MASUK',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          )),
                                    ),
                                    Flexible(flex: 1, child: Container()),
                                  ],
                                ),

                                // spasi
                                Flexible(child: Container(), flex: 1),

                                // button login with google
                                Row(
                                  children: [
                                    Flexible(flex: 1, child: Container()),
                                    Flexible(
                                      flex: 9,
                                      child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              color: Colors.red),
                                          child: MaterialButton(
                                            onPressed: null,
                                            child: Text(
                                              'LOGIN DENGAN GOOGLE',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          )),
                                    ),
                                    Flexible(flex: 1, child: Container()),
                                  ],
                                ),

                                // spasi
                                Flexible(child: Container(), flex: 1),
                              ],
                            ),
                          ),
                          flex: 24),

                      // spasi
                      Flexible(child: Container(), flex: 1),

                      // saya tidak punya akun? registrasi
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Saya tidak punya akun? Registrasi',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ),

                      // spasi
                      Flexible(child: Container(), flex: 10),
                    ],
                  ),
                ),
                flex: 11),
            Flexible(child: Container(), flex: 1),
          ],
        ),
      ),
    );
  }
}
