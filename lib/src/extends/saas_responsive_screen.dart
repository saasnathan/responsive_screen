part of '../../responsive_screen.dart';

typedef ResponsiveBuild = Widget Function(
  BuildContext context,
  Orientation orientation
);

class SaasResponsiveScreen extends StatelessWidget {
  final ResponsiveBuild builder;

  const SaasResponsiveScreen({ Key? key, required this.builder}) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return LayoutBuilder(builder: (context, constraints){
         return OrientationBuilder(builder: (context, orientation){
           _SaasSizeUtils.setSizes(constraints, orientation);
           return builder(context, orientation);
         });
       });
  }
}