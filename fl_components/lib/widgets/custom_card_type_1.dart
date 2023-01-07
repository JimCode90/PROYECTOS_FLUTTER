import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('El titulo'),
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet dictum sit amet justo donec enim diam vulputate. Enim sed faucibus turpis in eu mi. Nibh cras pulvinar mattis nunc sed blandit libero. Cras tincidunt lobortis feugiat vivamus at augue eget arcu.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: (){},
                    child: const Text('Cancel'),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text('Ok')
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}