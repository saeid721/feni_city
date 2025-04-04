
import 'package:flutter/material.dart';
import 'dart:math' as math show sin, pi;


class ProgressHUD extends StatelessWidget {

  final Widget child;
  final String titileText;
  final bool inAsyncCall;
  final double opacity;
  final Color color;
  final Animation<Color>? valueColor;

  const ProgressHUD({
    super.key,
    required this.child,
    required this.inAsyncCall,
    this.opacity = 0.5,
    this.color = Colors.black,
    this.valueColor, this.titileText="Please Wait.....",
  }) ;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    widgetList.add(child);
    if (inAsyncCall) {
      final modal = Stack(
        children: [
          Opacity(
            opacity: opacity,
            child: ModalBarrier(dismissible: false, color: color),
          ),
          Material(
            color: Colors.black26,
            child: Center(
              child: Container(
                height: 125,
                width: 120,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircularProgressIndicator(),
                    Text("Loading..."),
                  ],
                ),
              ),
            ),
          )
        ],
      );
      widgetList.add(modal);
    }
    return Stack(
      children: widgetList,
    );
  }
}


// class ProgressHUD extends StatelessWidget {
//
//   final Widget child;
//   final String titileText;
//   final bool inAsyncCall;
//   final double opacity;
//   final Color color;
//   final Animation<Color>? valueColor;
//
//   const ProgressHUD({
//     super.key,
//     required this.child,
//     required this.inAsyncCall,
//     this.opacity = 0.5,
//     this.color = Colors.black,
//     this.valueColor, this.titileText="Please Wait.....",
//   }) ;
//
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> widgetList = [];
//     widgetList.add(child);
//     if (inAsyncCall) {
//       final modal = Stack(
//         children: [
//           Opacity(
//             opacity: opacity,
//             child: ModalBarrier(dismissible: false, color: color),
//           ),
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.only(left:30.0,right:30),
//               child: Container(
//                 width: MediaQuery.of(context).size.width/2,
//                 height: MediaQuery.of(context).size.width/3,
//                 decoration: const BoxDecoration(
//                     color:Color(0xFF00A468),
//                     borderRadius: BorderRadius.all(Radius.circular(10))
//                 ),
//                 child: Column(
//                   children: [
//                     const Expanded(
//                       flex: 5,
//                       child: Center(
//                         child: SpinKitFadingCircle(
//                           color: Colors.white
//                           /*itemBuilder: (BuildContext context, int index) {
//                             return DecoratedBox(
//                               decoration: BoxDecoration(
//                                 color:Colors.green,
//                               ),
//                             );
//                           }*/,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                         flex: 2,
//                         child: Text(titileText, /*style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault,color: Colors.white),*/))
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       );
//       widgetList.add(modal);
//     }
//     return Stack(
//       children: widgetList,
//     );
//   }
// }

class SpinKitFadingCircle extends StatefulWidget {
  const SpinKitFadingCircle({
    Key? key,
    this.color,
    this.size = 50.0,
    this.itemBuilder,
    this.duration = const Duration(milliseconds: 1200),
    this.controller,
  })  : assert(
  !(itemBuilder is IndexedWidgetBuilder && color is Color) && !(itemBuilder == null && color == null),
  'You should specify either a itemBuilder or a color',
  ),
        super(key: key);

  final Color? color;
  final double size;
  final IndexedWidgetBuilder? itemBuilder;
  final Duration duration;
  final AnimationController? controller;

  @override
  State<SpinKitFadingCircle> createState() => _SpinKitFadingCircleState();
}

class _SpinKitFadingCircleState extends State<SpinKitFadingCircle> with SingleTickerProviderStateMixin {
  static const _itemCount = 12;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = (widget.controller ?? AnimationController(vsync: this, duration: widget.duration))..repeat();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.fromSize(
        size: Size.square(widget.size),
        child: Stack(
          children: List.generate(_itemCount, (i) {
            final position = widget.size * .5;
            return Positioned.fill(
              left: position,
              top: position,
              child: Transform(
                transform: Matrix4.rotationZ(30.0 * i * 0.0174533),
                child: Align(
                  alignment: Alignment.center,
                  child: FadeTransition(
                    opacity: DelayTween(
                      begin: 0.0,
                      end: 1.0,
                      delay: i / _itemCount,
                    ).animate(_controller),
                    child: SizedBox.fromSize(
                      size: Size.square(widget.size * 0.15),
                      child: _itemBuilder(i),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _itemBuilder(int index) => widget.itemBuilder != null
      ? widget.itemBuilder!(context, index)
      : DecoratedBox(
    decoration: BoxDecoration(
      color: widget.color,
      shape: BoxShape.circle,
    ),
  );
}


class DelayTween extends Tween<double> {
  DelayTween({
    double? begin,
    double? end,
    required this.delay,
  }) : super(begin: begin, end: end);

  final double delay;

  @override
  double lerp(double t) {
    return super.lerp((math.sin((t - delay) * 2 * math.pi) + 1) / 2);
  }

  @override
  double evaluate(Animation<double> animation) => lerp(animation.value);
}
