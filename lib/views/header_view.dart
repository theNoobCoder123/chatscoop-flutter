import 'package:flutter/material.dart';

class HeaderView extends StatefulWidget {
  const HeaderView({Key? key}) : super(key: key);

  @override
  State<HeaderView> createState() => _HeaderViewState();
}

class _HeaderViewState extends State<HeaderView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Material(
          color: Colors.transparent,
          child: IconButton(
            color: Colors.white,
            icon: const Icon(
              Icons.menu,
            ),
            onPressed: () => {},
          ),
        ),
        Material(
          color: Colors.transparent,
          child: IconButton(
            color: Colors.white,
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () => {},
          ),
        ),
      ],
    );
  }
}
