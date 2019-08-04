part of netflix;

class Filter extends StatefulWidget {
  static const route_name = '/filter';
  final String title;
  final String type;
  Filter({
    Key key,
    this.title,
    this.type,
  }) : super(key: key);

  @override
  FilterState createState() => FilterState();
}

class FilterArguments{
  final String title;

  FilterArguments(this.title);
}
