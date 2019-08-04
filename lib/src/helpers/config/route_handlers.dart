part of netflix;

var rootHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params,
      [dynamic object]) {
    return Home();
  },
);
var summaryRouteHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params,
      [dynamic object]) {
    return Summary();
  },
);
var detailRouteHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return TvShow(match: params['match'], item: params['show']);
  },
);
var trailerRouteHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return Video(title: params['title']);
  },
);
var filterRouteHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return Filter(
      type: params['type'],
    );
  },
);
