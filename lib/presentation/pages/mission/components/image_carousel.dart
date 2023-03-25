import 'package:cached_network_image/cached_network_image.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:next_starter/common/extensions/extensions.dart';

class ImageCarousel extends StatefulWidget {
  final String? heroTag;

  const ImageCarousel({
    super.key,
    this.heroTag,
  });

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final List<Widget> _images = [
    CachedNetworkImage(
      imageUrl: 'https://picsum.photos/seed/1/500/500',
      fit: BoxFit.cover,
    ),
    CachedNetworkImage(
      imageUrl: 'https://picsum.photos/400/600',
      fit: BoxFit.cover,
    ),
    CachedNetworkImage(
      imageUrl: 'https://picsum.photos/400/600',
      fit: BoxFit.cover,
    ),
  ];

  final LoopPageController _pageController = LoopPageController();

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LoopPageView.builder(
          controller: _pageController,
          itemCount: _images.length,
          itemBuilder: (context, index) {
            if (index == 0 && widget.heroTag != null) {
              return Hero(
                tag: widget.heroTag!,
                child: _images[index],
                flightShuttleBuilder: (
                  flightContext,
                  animation,
                  flightDirection,
                  fromHeroContext,
                  toHeroContext,
                ) =>
                    (fromHeroContext.widget as Hero).child,
              );
            }

            return _images[index];
          },
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
        ),
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: Entry.offset(
            delay: 300.milliseconds,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _images.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? context.colorScheme.primary
                        : context.colorScheme.background,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
