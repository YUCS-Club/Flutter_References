import 'package:flutter/material.dart';
import 'package:flutter_share_me/flutter_share_me.dart';
import 'package:share_plus/share_plus.dart';

class SocialSharePage extends StatefulWidget {
  const SocialSharePage({Key? key}) : super(key: key);

  @override
  _SocialSharePageState createState() => _SocialSharePageState();
}

class _SocialSharePageState extends State<SocialSharePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Share"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                print(
                  await FlutterShareMe().shareToFacebook(
                      url:
                          "https://en.wikipedia.org/wiki/Assassination_Classroom",
                      msg: "This anime is awesome dude.Try this."),
                );
              },
              child: Text("Share via facebook"),
            ),
            ElevatedButton(
              onPressed: () async {
                print(
                  await FlutterShareMe().shareToTwitter(
                      url:
                          "https://en.wikipedia.org/wiki/Assassination_Classroom",
                      msg: "This anime is awesome dude.Try this."),
                );
              },
              child: Text("Share via Twitter"),
            ),
            ElevatedButton(
              onPressed: () {
                Share.share('check out my website https://example.com',
                    subject: 'Look what I made!');
              },
              child: Text("Share Text via Shareplus"),
            ),
          ],
        ),
      ),
    );
  }
}
