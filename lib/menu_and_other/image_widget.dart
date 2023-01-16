import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});
  final String _imgUrl =
      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset(
                      'assets/images/car.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image.network(
                      _imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: CircleAvatar(
                      child: Text(
                        'A',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif', image: _imgUrl)
        ],
      ),
    );
  }
}
