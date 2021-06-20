import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);
  Widget _storeItemWidget(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/top/Fatherhood.png'),
        Column(
          children: [
            Text(
              'The Heart of Hell',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.black),
            ),
            Row(
              children: [],
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _storeItemWidget(context),
        ],
      ),
    );
  }
}
