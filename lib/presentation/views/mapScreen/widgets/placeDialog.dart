import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reality_near/core/framework/colors.dart';
import 'package:reality_near/core/framework/globals.dart';

class PlaceDialog extends StatefulWidget {
  PlaceDialog({Key key}) : super(key: key);

  @override
  State<PlaceDialog> createState() => _PermisosDialogState();
}

class _PermisosDialogState extends State<PlaceDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: SizedBox(
        height: ScreenWH(context).height * 0.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Título de evento',
                textAlign: TextAlign.center,
                style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: greenPrimary),
              ),
              Container(
                height: ScreenWH(context).height * 0.3,
                width: ScreenWH(context).width * 0.6,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/imgs/Logo_sin_fondo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Pequeño texto que explica de que trata el evento. Texto escrito por el creador del evento.',
                textAlign: TextAlign.center,
                style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
