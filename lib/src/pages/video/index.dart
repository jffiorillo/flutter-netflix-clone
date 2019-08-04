part of netflix;

class Video extends StatefulWidget {
  static const route_name = '/trailer';
  final String title;
  Video({Key key, this.title}) : super(key: key);

  @override
  VideoState createState() => VideoState();
}

class VideoArguments{
  final String title;

  VideoArguments(this.title);
}
