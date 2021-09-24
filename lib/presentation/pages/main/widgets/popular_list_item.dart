import 'package:flutter/material.dart';

class PopularListItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String body;
  final double rating;
  final bool isFavorite;
  PopularListItem({
    Key? key,
    required this.title,
    required this.body,
    required this.rating,
    required this.isFavorite,
    required this.imageUrl,
    required this.id,
  }) : super(key: Key(id));

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imageUrl,
                height: 112,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                body,
                style: Theme.of(context).textTheme.caption,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      constraints:
                          const BoxConstraints(maxWidth: 18, maxHeight: 18),
                      splashRadius: 18,
                      alignment: AlignmentDirectional.center,
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/star.png",
                        height: 18,
                        width: 18,
                      )),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 3),
                    child: Text(
                      rating.toString(),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      constraints:
                          const BoxConstraints(maxWidth: 18, maxHeight: 18),
                      padding: EdgeInsets.zero,
                      alignment: AlignmentDirectional.centerEnd,
                      onPressed: () {},
                      icon: Image.asset(
                        isFavorite
                            ? "assets/icons/heart_active.png"
                            : "assets/icons/heart.png",
                        height: 18,
                        width: 18,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
