import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Good Morning",
              style: GoogleFonts.poppins(
                  color: const Color(0xff090A0A),
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            Container(
              height: 32,
              width: 32,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img-avatar.png"))),
            )
          ],
        ),
      );
    }

    Widget musicHeader() {
      Widget musicCard(String img, String text) {
        return Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              Container(
                height: 88,
                width: 88,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                    color: const Color(0xff090A0A),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        );
      }

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Row(
            children: [
              const SizedBox(
                width: 24,
              ),
              musicCard("assets/img-music11.png", "Chill Hits"),
              musicCard("assets/img-music12.png", "Top Hits"),
              musicCard("assets/img-music13.png", "Happy Hits"),
              musicCard("assets/img-music14.png", "Good Time"),
            ],
          ),
        ),
      );
    }

    Widget musicPlay() {
      Widget musicCard(String img, String text, String subText) {
        return Container(
          width: 142,
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 142,
                width: 142,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                    color: const Color(0xff090A0A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                subText,
                style: GoogleFonts.poppins(
                  color: const Color(0xff6C7072),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, bottom: 16),
            child: Text(
              "Just For You",
              style: GoogleFonts.poppins(
                  color: const Color(0xff090A0A),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    musicCard("assets/img-music21.png", "Daily Mix",
                        "Jonas Blue, NOTD, David Guetta and more"),
                    musicCard("assets/img-music22.png", "Feelin’ Myself",
                        "Ariana Grande, Doja Cat, Megan Thee Stallion..."),
                    musicCard("assets/img-music23.png", "Mood Booster",
                        "BTS, Dua Lipa, Malone, Justin Bieber and more"),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget musicPopular() {
      Widget musicCard(String img, String text, String subText) {
        return Container(
          width: 142,
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 142,
                width: 142,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                    color: const Color(0xff090A0A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                subText,
                style: GoogleFonts.poppins(
                  color: const Color(0xff090A0A),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, bottom: 16),
            child: Text(
              "Just For You",
              style: GoogleFonts.poppins(
                  color: const Color(0xff090A0A),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    musicCard("assets/img-music12.png", "Good Vibes",
                        "Tame Impala, Joji, Tyler, The Creator, 5 Second"),
                    musicCard("assets/img-music13.png", "Mega Hit Mix",
                        "Ariana Grande, BTS, Dua Lipa, Justin Bieber, Taylo"),
                    musicCard("assets/img-music14.png", "Young & Free",
                        "LANY, Jeremy Zucker, Joji, ILLENIUM, Glass A..."),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            header(),
            const SizedBox(
              height: 24,
            ),
            musicHeader(),
            musicPlay(),
            musicPopular()
          ],
        ),
      )),
    );
  }
}
