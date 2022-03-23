import 'package:flutter/foundation.dart';

const String appName = 'Downtube';

/// name of screens
const String appLayout = '/';
const String appLayout_2 = '/2';

/// print
void printDebug(dynamic msg){
  if(kDebugMode){
    print(msg);
  }
}