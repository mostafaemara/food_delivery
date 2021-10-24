import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DrawerCloseButton extends StatelessWidget {
  const DrawerCloseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).colorScheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: IconButton(
            color: Theme.of(context).colorScheme.onSurface,
            onPressed: () {
              ZoomDrawer.of(context)!.close();
            },
            icon: const Icon(Icons.close)));
  }
}
