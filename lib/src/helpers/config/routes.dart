part of netflix;

class Routes {
  static String root = '/';
  static String summary = '/summary';
  static String detail = '/detail/:match&:show';
  static String filter = '/filter/:type';
  static String video = '/trailer/:title';

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params, [dynamic object]) {
      print('ROUTE WAS NOT FOUND !!!');
    });
    router.define(root, handler: rootHandler);
    router.define(summary, handler: summaryRouteHandler);
    router.define(detail, handler: detailRouteHandler);
    router.define(filter, handler: filterRouteHandler);
    router.define(video, handler: trailerRouteHandler);
  }
}
