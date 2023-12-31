import 'package:flutter/material.dart';

import '../widgets/list_item_widget.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  final List<ValueNotifier<int>> _counts =
      List.generate(100, (index) => ValueNotifier(0));

  @override
  void dispose() {
    for (final count in _counts) {
      count.dispose();
    }
    _counts.clear();
    super.dispose();
  }

  @override
  Scaffold build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text(("Pro Cricket Task"))),
        body: ListView.builder(
          itemCount: _counts.length,
          itemBuilder: (context, index) =>
              ListItemWidget(key: ValueKey(index), _counts[index]),
        ),
      );
}
