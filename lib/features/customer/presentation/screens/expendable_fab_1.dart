
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/logo_image_widget.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:flutter/material.dart';

class ExpandableFab1 extends StatefulWidget {
  final List<Widget> children;
  final Icon icon;
  final Color backgroundColor;

  const ExpandableFab1({
    Key? key,
    required this.children,
    required this.icon,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  _ExpandableFab1State createState() => _ExpandableFab1State();
}

class _ExpandableFab1State extends State<ExpandableFab1> with SingleTickerProviderStateMixin {
  bool _isOpen = false;
  late AnimationController _controller;
  late Animation<double> _expandAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _expandAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
  }

  void _toggle() {
    setState(() {
      _isOpen = !_isOpen;
      if (_isOpen) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_isOpen)
        // Container(
        //   color: _isOpen ? Colors.black.withOpacity(0.5) : Colors.transparent, // Semi-transparent background when FAB is open
        // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.children.map((child) {
              return ScaleTransition(
                scale: _expandAnimation,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: child,
                ),
              );
            }).toList(),
          ),
        SpaceItem(),
        FloatingActionButton(
          onPressed: _toggle,
          backgroundColor: AppColors.pureWhite,
          shape: CircleBorder(),
          child: _isOpen ? Icon(Icons.close,color: AppColors.yellow,) : LogoImageWidget(),
        ),
      ],
    );
  }
}
