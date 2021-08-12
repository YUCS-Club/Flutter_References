# Course Materials

Course materials for Handful Programming with Java and Flutter.

Currently Used Packages

```yaml
dependencies:
  flutter:
    sdk: flutter
  auto_route: ^2.2.0
  cupertino_icons: ^1.0.2
  dio: ^4.0.0
  flutter:
    sdk: flutter
  infinite_scroll_pagination: ^3.1.0
  json_serializable: ^4.1.3
  flutter_share_me: ^0.11.2
  share_plus: ^2.1.4

dev_dependencies:
  flutter_test:
    sdk: flutter
  auto_route_generator: any
  build_runner: any
```

Social Share on Facebook and Twitter

I am currently using [this package](https://pub.dev/packages/flutter_share_me) as others are inactive or outdated.

> First create your app in developer.facebook.com -> choose consumer

And get your app id in settings/basic.

I have looked at this package's source code and it will become great in my opinion.

In AndroidManifest.xml(main folder),
copy this
```xml
//There will be application tag<application>. add this between them.
 <meta-data
            android:name="com.facebook.sdk.ApplicationId"
            android:value="@string/facebook_app_id" />
            
        <provider
            android:name="com.facebook.FacebookContentProvider"
            android:authorities="com.facebook.app.FacebookContentProvider1232312312321"
            android:exported="false" />
```


For further info, you can read the README.md file of this package.

Another package I haven't tested yet is [share_plus](https://pub.dev/packages/share_plus)

It is quite promising for our problems.


