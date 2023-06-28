import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  final ValueNotifier<int> countValue;

  const ListItemWidget(this.countValue, {super.key});

  @override
  Container build(BuildContext context) => Container(
        padding: const EdgeInsets.all(4),
        child: ValueListenableBuilder(
          valueListenable: countValue,
          builder: (context, value, child) => Row(
            children: [
              Text("$value"),
              MaterialButton(
                onPressed: () => countValue.value++,
                child: const Text("+"),
              )
            ],
          ),
        ),
      );
}
