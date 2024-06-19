import 'package:flutter/cupertino.dart';

class SignHeaderTitle extends StatelessWidget {
  const SignHeaderTitle(
      {super.key, required this.texttitle, required this.textsubtitle});
  final String texttitle;
  final String textsubtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312.70,
      height: 119,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 275,
            child: Text(
              texttitle,
              style: TextStyle(
                color: Color(0xFF247CFF),
                fontSize: 24,
// fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0.06,
                // letterSpacing: -0.10,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 312,
            child: Text(textsubtitle),
          )
        ],
      ),
    );
  }
}
