part of 'focus_navigation_widget.dart';

class FocusNavigationTile extends StatefulWidget {
  final bool isActive;
  final FocusNavigationItem item;

  const FocusNavigationTile({
    Key? key,
    required this.item,
    required this.isActive,
  }) : super(key: key);

  @override
  State<FocusNavigationTile> createState() => _FocusNavigationTileState();
}

class _FocusNavigationTileState extends State<FocusNavigationTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.item.onTap,
      child: Stack(
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Icon(
                  widget.isActive
                      ? widget.item.activeIcon
                      : widget.item.inactiveIcon ?? widget.item.activeIcon,
                  color: widget.isActive
                      ? widget.item.style.primaryColor
                      : widget.item.style.inactiveColor,
                  size: 20,
                ),
                const Spacer(),
                Container(
                  decoration: widget.isActive
                      ? BoxDecoration(
                          color: widget.item.style.barColor ??
                              widget.item.style.primaryColor,
                          borderRadius: BorderRadius.circular(
                            100,
                          ),
                        )
                      : null,
                  width: 60,
                  height: 6,
                )
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: 60,
                  decoration: widget.isActive
                      ? BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              widget.item.style.shadowColor?.withOpacity(0.2) ??
                                  widget.item.style.primaryColor
                                      .withOpacity(0.2),
                              widget.item.style.shadowColor
                                      ?.withOpacity(0.01) ??
                                  widget.item.style.primaryColor
                                      .withOpacity(0.01),
                            ],
                          ),
                        )
                      : null,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
