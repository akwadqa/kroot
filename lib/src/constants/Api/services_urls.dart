import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../dotenv_keys.dart';

class ServicesUrls {
  static String baseUrl = '';
  static String baseProductionUrl = '';
  static String imageUrl = '';
  static void init() {
    baseUrl = dotenv.get(DotenvKeys.baseUrl);
    baseProductionUrl = dotenv.get(DotenvKeys.productionBaseUrl);
    imageUrl = dotenv.get(DotenvKeys.imageUrl);
    debugPrint('mnor $baseProductionUrl');
    debugPrint('mnor $baseUrl');
  }

}
