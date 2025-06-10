import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class AnswerButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const AnswerButton({super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 66, 43, 126),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.roboto(fontWeight: FontWeight.normal),
      ),
    );
  }
}
