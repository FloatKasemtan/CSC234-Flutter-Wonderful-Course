import 'package:flutter/material.dart';

class StarGroup extends StatelessWidget {
  const StarGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildFav(),
        _buildFav(),
        _buildFav(),
        _buildFavOutline(),
        _buildFavOutline()
      ],
    );
  }

  Widget _buildFav() {
    return const Icon(
      Icons.favorite,
      size: 16,
      color: Colors.blue,
    );
  }

  Widget _buildFavOutline() {
    return const Icon(
      Icons.favorite_border_outlined,
      size: 16,
    );
  }
}
