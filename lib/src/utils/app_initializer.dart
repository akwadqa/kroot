
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../constants/Api/services_urls.dart';

abstract class AppInitializer {
  static Future<void> init() async {
    //-- Flutter init --
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    

    //-- ENV FILE LOAD  --
    await dotenv.load(fileName: '.env');
    //-- Hive initialize --
    // await Hive.initFlutter();
    // await HiveInitializer.initialize();
    //
    //-- Load base URL's  --
    ServicesUrls.init();
    
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    //-- Localization init  --
    await EasyLocalization.ensureInitialized();
  }
}
