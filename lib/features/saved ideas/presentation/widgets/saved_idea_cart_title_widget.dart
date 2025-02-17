import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harry_mine/helpers/ui_helpers.dart';

import '../../../../constants/text_font_style.dart';

class SavedIdeaCartTitleWidget extends StatelessWidget {
  final String title;
  final String details;
  const SavedIdeaCartTitleWidget(
      {super.key, required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Text(
                "$title:",
                style: TextFontStyle.title14whitePoppins400,
                overflow: TextOverflow.ellipsis,
              )),
          UIHelper.horizontalSpace(5.w),
          Expanded(
              flex: 4,
              child: Text(
                details,
                overflow: TextOverflow.ellipsis,
                style: TextFontStyle.title14cA5ADBAPoppins400,
              ))
        ],
      ),
    );
  }
}
