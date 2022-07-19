import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDisplayScreen extends StatefulWidget {
  const CardDisplayScreen({Key? key, required this.selectedIndex})
      : super(key: key);

  final int selectedIndex;

  @override
  State<CardDisplayScreen> createState() => _CardDisplayScreenState();
}

class _CardDisplayScreenState extends State<CardDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff22123f),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Image(
                            image: AssetImage(
                              'back.png',
                            ),
                            color: Colors.white,
                            height: 20,
                          ),
                        ),
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.white.withOpacity(0.1),
                          child: const Image(
                            image: AssetImage(
                              'share.png',
                            ),
                            height: 26,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 85),
                  CreditCard(index: widget.selectedIndex),
                ],
              ),
            ),
            Column(
              children: [
                const Spacer(
                  flex: 1,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                  height: 360,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(125, 38, 39, 67),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: const [
                      CustomBtn(
                        name: 'Remove Card',
                        color: Color.fromARGB(106, 38, 39, 67),
                      ),
                      SizedBox(height: 25),
                      CustomBtn(
                        name: 'Edit Card',
                        color: Color.fromARGB(106, 38, 39, 67),
                      ),
                      SizedBox(height: 25),
                      CustomBtn(
                        name: 'Cancel',
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    Key? key,
    required this.name,
    required this.color,
  }) : super(key: key);

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: null,
      child: Container(
        height: 75,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Center(
          child: Text(
            name,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
