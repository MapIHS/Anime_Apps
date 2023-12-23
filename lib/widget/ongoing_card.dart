import 'package:anime_apps/helpers/style.dart';
import 'package:anime_apps/models/anime.dart';
import 'package:anime_apps/pages/detail_page.dart';
import 'package:flutter/material.dart';

class OngoingCard extends StatelessWidget {
  const OngoingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: animeList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 2 / 3),
        itemBuilder: (context, index) {
          final AnimeHome items = animeList[index];
          return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(animek: items),
                  ),
                );
              },
              child: Stack(
                children: <Widget>[
                  Column(
                    children: [
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              items.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                          items.title,
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            overflow: TextOverflow.ellipsis,
                          ),
                          textAlign: TextAlign.center,

                        ),
                    ],
                  ),
                ],
              ));
        },
      ),
    );
  }
}
