part of netflix;

class TvShow extends StatefulWidget {
  static const route_name = '/detail';
  final int match;
  final Result item;

  TvShow({
    Key key,
    this.match,
    this.item,
  }) : super(key: key);

  @override
  TvShowState createState() => TvShowState();
}

class TvShowArguments{
  final int match;
  final Result item;

  TvShowArguments(this.match, this.item);
}
