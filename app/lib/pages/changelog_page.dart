import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:transfer_hub_app/gen/assets.gen.dart';
import 'package:transfer_hub_app/gen/strings.g.dart';
import 'package:transfer_hub_app/util/ui/nav_bar_padding.dart';
import 'package:transfer_hub_app/widget/custom_basic_appbar.dart';

class ChangelogPage extends StatelessWidget {
  const ChangelogPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: basicTransferHubAppbar(t.changelogPage.title),
      body: FutureBuilder(
        future: rootBundle.loadString(Assets.changelog), // ignore: discarded_futures
        builder: (context, data) {
          if (!data.hasData) {
            return Container();
          }
          return Markdown(
            padding: EdgeInsets.only(
              left: 15 + MediaQuery.of(context).padding.left,
              right: 15 + MediaQuery.of(context).padding.right,
              top: 15,
              bottom: 15 + getNavBarPadding(context),
            ),
            data: data.data!,
          );
        },
      ),
    );
  }
}
