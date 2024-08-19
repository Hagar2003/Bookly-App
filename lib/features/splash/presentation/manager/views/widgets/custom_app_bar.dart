import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 32),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetData.logo,height: 20,),
          IconButton(onPressed: (){},
           icon:Icon( FontAwesomeIcons.magnifyingGlass,size:24,color: Colors.white,))
        ],
      ),
    );
  }
}
