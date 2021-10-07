import 'package:flutter/material.dart';

class ProfileListItem extends StatelessWidget {
  const ProfileListItem({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    final isArabic = Localizations.localeOf(context).languageCode == "ar";
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        onTap: onTap,
        title: Text(title),
        trailing: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Transform.rotate(
                angle: isArabic ? 0 : 380,
                child: const Icon(
                  Icons.arrow_back_ios_new,
                ))),
      ),
    );
  }
}
