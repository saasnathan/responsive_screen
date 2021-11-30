part of '../../responsive_screen.dart';

extension DoubleExtension on num {
  
  double get deviceHeight => _SaasSizeUtils.getResponsiveHeight(this);
  double get deviceWidth => _SaasSizeUtils.getResponsiveWidth(this);
}