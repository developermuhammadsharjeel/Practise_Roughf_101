import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Size{
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double blockSizeHorizontal = 0;
  static double blockSizeVertical = 0;
  static double textMultiplier = 0;
  static double imageSizeMultiplier = 0;

  static double screenSafeWidth = 0;
  static double screenSafeHeight = 0;

  // Function to initialize size config
  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    // Block Size Horizontal & Vertical
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    // Text Size Multiplier
    textMultiplier = blockSizeVertical;

    // Image Size Multiplier (usually for images that scale based on the screen size)
    imageSizeMultiplier = blockSizeHorizontal;

    // Safe Area Width & Height (safe zone)
    screenSafeWidth = MediaQuery.of(context).padding.left + MediaQuery.of(context).padding.right;
    screenSafeHeight = MediaQuery.of(context).padding.top + MediaQuery.of(context).padding.bottom;
  }
}


// Initialize size config where to use
// SizeConfig.init(context);
