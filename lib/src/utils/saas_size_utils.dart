part of '../../responsive_screen.dart';

class _SaasSizeUtils {

  static late Orientation _orientation;
  static late BoxConstraints _constraints;
  static late double height;
  static late double width;

  static void setSizes(BoxConstraints constraints, Orientation orientation){
    _constraints = constraints;
    _orientation = orientation;

    _setSizes();
  }

  static void _setSizes(){
    if (_orientation == Orientation.landscape && !kIsWeb) {
      width = _constraints.maxHeight;
      height = _constraints.maxWidth;
    } else {
      width = _constraints.maxWidth;
      height = _constraints.maxHeight;
    }
  }

  static double getResponsiveHeight(num value){
    return (value * height) / 100;
  }

  static double getResponsiveWidth(num value){
    return (value * width) / 100;
  }
}