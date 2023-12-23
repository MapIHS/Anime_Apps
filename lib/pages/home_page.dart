import 'package:anime_apps/helpers/colors.dart';
import 'package:anime_apps/widget/ongoing_card.dart';
import 'package:flutter/material.dart';
import '../helpers/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            // TITLE
            Padding(
              padding: EdgeInsets.only(
                left: size,
              ),
              child: Text(
                'Anime Apps',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: size),
              child: Text(
                'Streaming Anime',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: EdgeInsets.only(left: size, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ongoing',
                      style: regulerTextStyle.copyWith(fontSize: 16),
                    ),

                    // SEE ALL
                    Row(
                      children: [
                        Text(
                          'See All',
                          style: regulerTextStyle.copyWith(fontSize: 13),
                        ),
                        IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Coming Soon"),
                              ));
                            },
                            icon: const Icon(Icons.arrow_right))
                      ],
                    ),
                  ],
                )),
            const SizedBox(
              height: 16,
            ),
            const Expanded(child: OngoingCard()),
          ],
        ),
      ),
    );
  }
}
