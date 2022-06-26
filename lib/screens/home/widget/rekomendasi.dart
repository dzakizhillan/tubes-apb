import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/placemodel.dart';
import '../../../utilities/color.dart';

class Recoment extends StatelessWidget {

  
    final PlaceInfo placeInfo;
    final VoidCallback press;
    const Recoment({
    Key? key, required this.placeInfo, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
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
      ),
    );   
  }
}