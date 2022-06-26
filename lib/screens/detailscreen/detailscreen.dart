import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/placemodel.dart';
import 'package:flutter_application_1/utilities/color.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({ Key? key, }) : super(key: key);

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Image.asset(
            "assets/images/welcome1.jpg",
            height: 300,
            width: 600,
            fit: BoxFit.cover,
          ),
           SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                   const Text(
                      "Deskripsi :",
                      style: TextStyle(
                        fontSize:30, 
                        color: kGreyClr,
                        fontWeight: FontWeight.w600,
                        ),
                    ),
                   const SizedBox(height: 15),
                    const Text(
                      "hotel ini sangat bagus untuk berlibur. harganya murah dan dapat muat banyak orang jangan lupa kunjungi hotel kami. salam staycation.Hotel modern ini berjarak 2 km dari taman hiburan indoor Trans Studio Bandung, 5 km dari Gedung Sate, yang merupakan bekas kantor pemerintahan Kolonial Belanda, dan 7 km dari Kebun Binatang Bandung.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color:kGreyClr, fontSize: 16, height: 1.6),
                      ),
                    const SizedBox(height: 15,),
                      InkWell(
                        child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: kGreyClr,
                            borderRadius: BorderRadius.circular(100)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                                padding: EdgeInsets.all(5.0),
                                width: 70.0,
                                height: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Color.fromARGB(255, 214, 214, 214),
                                    onSurface: Colors.white,
                                    fixedSize: Size(70, 15),
                                    shape: const BeveledRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                  ),
                                  onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title: Text(
                                        ' Pesan sekarang?',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                                255, 79, 79, 79)),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Tidak'),
                                          child: const Text('Tidak'),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Iya'),
                                          child: const Text('Iya'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  child: const Text('Pesan sekarang'),
                                ),
                              )
                            ],
                            ),
                              
                        ),
                      ),
                      const SizedBox(
                            width: 10,
                          ),
                  ],
                ),
              ),
            ),
          )
        ]

      )
    );
  }
}