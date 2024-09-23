import 'package:flutter/material.dart';

import '../../../../core/constants/values_manager.dart';

class ImagePostWidget extends StatelessWidget {
  final List<String> images;
  const ImagePostWidget({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    switch (images.length) {
      case 1:
        return Container(
          height: AppSizeH.s354,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizeR.s24),
            image: DecorationImage(
                image: AssetImage(images.first), fit: BoxFit.cover),
          ),
        );
      case 2:
        return SizedBox(
          height: AppSizeH.s354,
          child: Row(
              children: images
                  .map(
                    (e) => Expanded(
                      child: Container(
                        margin: EdgeInsetsDirectional.all(AppSizeW.s2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppSizeR.s24),
                          image: DecorationImage(
                              image: AssetImage(e), fit: BoxFit.contain),
                        ),
                      ),
                    ),
                  )
                  .toList()),
        );
      case 3:
        var newImg = [];
        newImg.addAll(images);
        newImg.removeAt(0);
        return SizedBox(
          height: AppSizeH.s354,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsetsDirectional.only(end: AppSizeW.s2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSizeR.s24),
                    image: DecorationImage(
                        image: AssetImage(images.first), fit: BoxFit.cover),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                    children: newImg
                        .map(
                          (e) => Expanded(
                            child: Container(
                              margin: EdgeInsetsDirectional.all(AppSizeW.s2),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppSizeR.s24),
                                image: DecorationImage(
                                    image: AssetImage(e), fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        )
                        .toList()),
              ),
            ],
          ),
        );
      default:
        return const SizedBox();
    }
  }
}
