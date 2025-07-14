import 'package:flutter/material.dart';
import 'package:islam_app/presentation/main_container/widgets/new/bottom_nav_bar/bottom_navbar_items.dart';

class BottomNavbar extends StatefulWidget {
  BottomNavbar({
    super.key,
    required this.navItems,
    this.onNavBarCallBack,
    this.initialIndex = 0,
  });

  final List<BottomNavbarItems> navItems;
  final void Function(int index)? onNavBarCallBack;
  final int initialIndex;

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int pageIndex = 0;
  int currentIndex = 0;
  @override
  void didUpdateWidget(covariant BottomNavbar oldWidget) {
    super.didUpdateWidget(oldWidget);

    currentIndex = widget.initialIndex;
    pageIndex = currentIndex;
  }

  void _onItemTap(int index) {
    if (pageIndex == index) return;

    setState(() {
      pageIndex = index;
      currentIndex = index;
    });

    widget.onNavBarCallBack?.call(index);
  }

  @override
  Widget build(BuildContext context) {
    pageIndex = currentIndex;
    return Container(
      height: 68,
      margin: const EdgeInsetsDirectional.only(
        start: 16,
        end: 16,
        top: 8,
        bottom: 27,
      ),
      padding: const EdgeInsets.only(left: 6, right: 6),
      decoration: BoxDecoration(
        color: const Color(0xff292929),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(widget.navItems.length, (index) {
          final isSelected = pageIndex == index;
          return Flexible(
            fit: FlexFit.tight,
            child: InkWell(
              borderRadius: BorderRadius.circular(6),
              onTap: () => _onItemTap(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width < 400 ? 12 : 0,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: isSelected
                      ? const Color(0xFF00AFAB)
                      : Colors.transparent,
                ),
                child: widget.navItems[index].copyWith(isSelected: isSelected),
              ),
            ),
          );
        }),
      ),
    );
  }
}
