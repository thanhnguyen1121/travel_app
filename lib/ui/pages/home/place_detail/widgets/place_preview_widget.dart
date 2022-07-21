import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';

class PlacePreviewWidget extends StatelessWidget {
  final List<String> placePreviews;
  final ValueChanged<int>? onClickView;

  const PlacePreviewWidget(
      {Key? key, required this.placePreviews, this.onClickView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.separated(
        itemCount: placePreviews.length >= 6 ? 6 : placePreviews.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 26,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onClickView?.call(index);
            },
            child: Container(
              width: 42,
              height: 42,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    color: Colors.transparent,
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        child: Image.asset(
                          placePreviews[index],
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                  if (placePreviews.length - 6 > 0 && index == 5)
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "+${placePreviews.length - 6}",
                          style: context.textTheme.bodyText2?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
