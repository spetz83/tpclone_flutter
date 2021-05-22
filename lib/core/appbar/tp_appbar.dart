import 'package:flutter/material.dart';
import 'package:simple_gravatar/simple_gravatar.dart';
import 'package:tpclone_flutter/constants/app_constants.dart';

class TPAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TPAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var gravatar = Gravatar('thomas.etzel@gmail.com');
    var avatarUrl = gravatar.imageUrl(
      defaultImage: GravatarImage.retro,
      rating: GravatarRating.pg,
      fileExtension: true,
    );

    return AppBar(
      title: Text("Tom Etzel"),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        onPressed: null,
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 16.0,
            left: 16.0,
          ),
          child: PopupMenuButton(
            child: CircleAvatar(
              backgroundColor: Colors.green.shade300,
              child: Text("TE"),
              foregroundImage: NetworkImage(avatarUrl),
            ),
            itemBuilder: (BuildContext context) {
              return AppConstants.MENU_ITEMS
                  .map(
                    (String item) => PopupMenuItem(
                      child: Text(item),
                      value: item,
                    ),
                  )
                  .toList();
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
