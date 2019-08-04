library netflix;

// Dart Imports
import 'dart:async';
import 'dart:convert';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' show Client;
import 'package:rxdart/rxdart.dart';
import 'package:video_player/video_player.dart';

part 'src/blocs/movies_bloc.dart';

part 'src/helpers/config/application.dart';

part 'src/helpers/config/constants.dart';

part 'src/helpers/config/route_handlers.dart';

part 'src/helpers/config/routes.dart';

part 'src/models/episode.dart';

part 'src/models/item_model.dart';

part 'src/models/result.dart';

part 'src/pages/detail/index.dart';

part 'src/pages/detail/state.dart';

part 'src/pages/filter/index.dart';

part 'src/pages/filter/state.dart';

part 'src/pages/home/index.dart';

part 'src/pages/home/state.dart';

part 'src/pages/summary/index.dart';

part 'src/pages/summary/state.dart';

part 'src/pages/video/index.dart';

part 'src/pages/video/state.dart';

part 'src/resources/movie_api_provider.dart';

part 'src/resources/repository.dart';

part 'src/utils/theme/color.dart';

part 'src/utils/theme/typography.dart';

part 'src/widgets/player-controls/index.dart';

part 'src/widgets/player-controls/state.dart';

part 'src/widgets/player-life-cycle/index.dart';

part 'src/widgets/player-life-cycle/state.dart';

part 'src/widgets/tvshow-list/index.dart';

class Netflix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        fontFamily: 'GoogleSans',
        primaryColor: Colors.black,
      ),
      onGenerateRoute: (settings) {
        if (settings.name == Summary.route_name) {
          return MaterialPageRoute(builder: (context) => Summary());
        } else if (settings.name == Video.route_name) {
          VideoArguments arg = settings.arguments;
          return MaterialPageRoute(builder: (c) => Video(title: arg.title));
        } else if (settings.name == Filter.route_name) {
          FilterArguments arg = settings.arguments;
          return MaterialPageRoute(builder: (c) => Filter(title: arg.title));
        } else if (settings.name == TvShow.route_name) {
          TvShowArguments arg = settings.arguments;
          return MaterialPageRoute(
              builder: (c) => TvShow(item: arg.item, match: arg.match));
        }
        return MaterialPageRoute(builder: (context) => Summary());
      },
      home: Home(),
//      initialRoute: Summary.route_name,
//      routes: {
//        '/': (context) => Home(),
//      },
    );
  }
}
