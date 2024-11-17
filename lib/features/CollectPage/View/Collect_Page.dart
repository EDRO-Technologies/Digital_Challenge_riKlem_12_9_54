import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hahatonchikk/features/CollectPage/Widgets/Custom_Collect_Sheet.dart';

class CollectPage extends StatefulWidget {
  const CollectPage({super.key});

  @override
  State<CollectPage> createState() => _CollectPageState();
}

class _CollectPageState extends State<CollectPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showModalSheet();
    });
  }

  void _showModalSheet() {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return const CustomCollectSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
