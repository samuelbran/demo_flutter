import 'package:demo_flutter/app.dart';
import 'package:demo_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FlutterDemo());
}

class FlutterDemo extends StatelessWidget {
  const FlutterDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        splashFactory: InkRipple.splashFactory,
        splashColor: primaryColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          onPrimary: onPrimaryColor,
        ),
        textTheme: GoogleFonts.interTextTheme(),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Color(0xFFF8FAFB),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
          ),
        ),
        listTileTheme: ListTileThemeData(
          contentPadding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultPadding + 10),
            side: const BorderSide(
              color: Colors.grey,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: primaryColor,
            onPrimary: onPrimaryColor,
            elevation: 0,
            padding: const EdgeInsets.symmetric(
              vertical: defaultPadding - 5,
              horizontal: defaultPadding,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultPadding + 10),
            ),
            textStyle: textTheme.bodyLarge!.copyWith(
              fontSize: 16.0,
            ),
          ),
        ),
      ),
      home: const App(),
    );
  }
}
