

import 'package:netflix/pages/downloads.dart';
import 'package:netflix/pages/home.dart';
import 'package:netflix/pages/search.dart';
import 'package:netflix/pages/video.dart';

class PageBar {
  static const List tabbarPage =[HomePage(),Video(),Search(),Downloads()];
  static int selected = 0;
}