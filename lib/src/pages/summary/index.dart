part of netflix;

class Summary extends StatefulWidget {
  static const route_name = "/summary";
  Summary({Key key, this.title}) : super(key: key);
  final String title;

  @override
  SummaryState createState() => SummaryState();
}