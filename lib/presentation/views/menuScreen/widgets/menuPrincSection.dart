import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reality_near/core/framework/colors.dart';
import 'package:reality_near/core/framework/globals.dart';
import 'package:reality_near/presentation/views/configurationScreen/configurationScreen.dart';
import 'package:sizer/sizer.dart';

import '../../../bloc/menu/menu_bloc.dart';

class MenuPrincSection extends StatelessWidget {
  const MenuPrincSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [topSection(), bottomSection(context)]);
    });
  }

  Widget topSection() {
    return Column(children: [
      Align(
          alignment: Alignment.centerRight,
          child: personCircle('https://picsum.photos/700/400?random')),
      Align(
        alignment: Alignment.centerRight,
        child: Text(
          getRandomName(),
          style: GoogleFonts.sourceSansPro(
              fontSize: 35.sp,
              color: greenPrimary3,
              fontWeight: FontWeight.bold),
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Text(
          'ID: Usuario',
          style: GoogleFonts.sourceSansPro(
              fontSize: 30.sp,
              color: Colors.black38,
              fontWeight: FontWeight.w500),
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Text(
          '1548 Realities',
          style: GoogleFonts.sourceSansPro(
              fontSize: 30.sp,
              color: Colors.black38,
              fontWeight: FontWeight.w500),
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Text(
          'Amigos',
          style: GoogleFonts.sourceSansPro(
              fontSize: 30.sp,
              color: Colors.black38,
              fontWeight: FontWeight.w500),
        ),
      ),
    ]);
  }

  Widget personCircle(String photo) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 22.w,
        backgroundImage: NetworkImage(photo),
      ),
    );
  }

  Widget bottomSection(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ConfigurationScreen.routeName);
            },
            child: const Icon(Icons.settings, color: greenPrimary3, size: 35)),
        Align(
          alignment: Alignment.centerRight,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Text(
                  'Logout',
                  style: GoogleFonts.sourceSansPro(
                      color: greenPrimary3,
                      fontWeight: FontWeight.w500,
                      fontSize: 30.sp),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
