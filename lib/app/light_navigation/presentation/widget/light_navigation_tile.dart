part of 'light_navigation_bar.dart';

class LightNavigationTile extends StatefulWidget {
  final bool isActive;
  final LightNavigationItem item;
  final Duration? animationDuration;

  const LightNavigationTile({
    Key? key,
    required this.item,
    required this.isActive,
    this.animationDuration,
  }) : super(key: key);

  @override
  State<LightNavigationTile> createState() => _LightNavigationTileState();
}

class _LightNavigationTileState extends State<LightNavigationTile> {
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
                      : const BoxDecoration(),
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
              AnimatedContainer(
                duration: widget.animationDuration ??
                    const Duration(
                      milliseconds: 500,
                    ),
                width: 60,
                height: widget.isActive ? 55 : 0,
                decoration: widget.isActive
                    ? BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            widget.item.style.shadowColor?.withOpacity(0.2) ??
                                widget.item.style.primaryColor.withOpacity(0.2),
                            widget.item.style.shadowColor?.withOpacity(0.01) ??
                                widget.item.style.primaryColor
                                    .withOpacity(0.01),
                          ],
                        ),
                      )
                    : const BoxDecoration(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
