import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class stg_align extends StatelessWidget {
  const stg_align({super.key});

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      itemCount: 20,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network('https://source.unsplash.com/random?sig=$index'),
        );
      },
    );
  }
}
