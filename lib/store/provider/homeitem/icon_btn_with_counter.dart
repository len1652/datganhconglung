import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../styles/constants.dart';
import '../../styles/size_config.dart';

class IconBtnWithCouter extends StatelessWidget {
  const IconBtnWithCouter({
    Key? key,
    required this.svgSrc,
    this.numOfItems = 0,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(

        children: <Widget>[
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(56),
            width: getProportionateScreenHeight(56),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/icons/Cart Icon.svg"),
          ),
          if(numOfItems!=0)
            Positioned(
              top: -2,
              right: 0,
              child: Container(
                height: getProportionateScreenWidth(16),
                width: getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color:Colors.white),
                ),
                child:  Center(
                  child: Text(
                    "$numOfItems",
                    style:TextStyle(
                        fontSize: getProportionateScreenWidth(10),
                        height: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
