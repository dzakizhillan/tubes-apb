import 'package:flutter/material.dart' ;
import 'package:flutter_application_1/model/placemodel.dart';
import 'package:flutter_application_1/screens/detailscreen/detailscreen.dart';
import 'package:flutter_application_1/utilities/color.dart';
import 'package:flutter_application_1/screens/detailscreen/detailscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({ Key? key }) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("Travel Tergokil")
        ),
        
        backgroundColor: kWhiteClr,
        body: SafeArea(
          child:Padding(padding:const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(children: [
            const SizedBox(
              height: 15,
            ),
            const Text("Explore New Destination",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(
            height: 20, 
            ), 
            Material(
              borderRadius: BorderRadius.circular(100),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: kWhiteClr, borderRadius: BorderRadius. circular(100)), // BoxDecoration
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric (vertical: 5, horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Search your destination", prefixIcon: Icon(Icons.search),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            ), 
                            ), 
                            ), 
                   ],
                 ),
               ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children:  const [
                const Text("Hotel",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
            const SizedBox(
            height: 20, 
            ),
            Container(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left:5,right:15),
                  child: Row(
                      children: [
                        Recoment(placeInfo: places[index],
                         press: () { 
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Detailscreen()));
                         },),
                        
                      ],
                   ),
                );
              }
              ),
            ),
            const SizedBox(height: 15,),
             InkWell(
              onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailscreen()));
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
                            const Text("deskription", 
                              style: TextStyle(
                                fontSize: 16,fontWeight: FontWeight.w600),
                              ),
                            ],
                            ),
                              
                        ),
             ),
          ],
        )
          ),
          
    ),
    );

  }
}

class Recoment extends StatelessWidget {

  
    final PlaceInfo placeInfo;
    final VoidCallback press;
    const Recoment({
    Key? key, required this.placeInfo, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 320,
        width: 200,
        decoration: BoxDecoration( color: kWhiteClr,
        borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(padding:const EdgeInsets.all(8.0) ,
            child: Container(   
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(placeInfo.image))
              ),
              
              ),
            ),
            Text(placeInfo.name)
          ],
        ),
      ),
    );   
  }
}