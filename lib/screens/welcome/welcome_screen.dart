import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/home.dart';
import 'package:flutter_application_1/utilities/color.dart';
class welcomescreen extends StatefulWidget {
  const welcomescreen({ Key? key }) : super(key: key);

  @override
  State<welcomescreen> createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Image.asset(
            "assets/images/welcome1.jpg",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text(
                      "-Travel Gokill-",
                      style: TextStyle(
                        fontSize:30, 
                        color: kGreyClr,
                        fontWeight: FontWeight.w600,
                        ),
                    ),
                   const SizedBox(height: 15),
                    const Text(
                      "Selamat datang di Travel ter Gokil se Indonesia. kalian dapat mendapatkan banyak informasi yang menarik di dalamnya. Travel Gokilll jaya jaya jaya",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color:kWhiteClr, fontSize: 16, height: 1.6),
                      ),
                    const SizedBox(height: 15,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Homescreen()));
                        },
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
                            const Text("Mulai", 
                              style: TextStyle(
                                fontSize: 16,fontWeight: FontWeight.w600),
                              ),
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
        ],
      )
    );
  }
}