import 'package:flutter/material.dart';

class MyDraggableSheet extends StatefulWidget {
  final Widget child;

  const MyDraggableSheet({Key? key, required this.child}) : super(key: key);

  @override
  _MyDraggableSheetState createState() => _MyDraggableSheetState();
}

class _MyDraggableSheetState extends State<MyDraggableSheet> {
  final sheet = GlobalKey();
  final controller = DraggableScrollableController();

  @override
  void initState() {
    super.initState();
    controller.addListener(onChanged);
  }

  void onChanged() {
    final currentSize = controller.size;
    if (currentSize <= 0.05) collapse();
  }

  void collapse() => animateSheet(getSheet.snapSizes!.first);

  void anchor() => animateSheet(getSheet.snapSizes!.last);

  void expand() => animateSheet(getSheet.maxChildSize);

  void hide() => animateSheet(getSheet.minChildSize);

  void animateSheet(double size) {
    controller.animateTo(
      size,
      duration: const Duration(milliseconds: 50),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  DraggableScrollableSheet get getSheet =>
      (sheet.currentWidget as DraggableScrollableSheet);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      key: sheet,
      initialChildSize: 0.5,
      maxChildSize: 0.95,
      minChildSize: 0,
      expand: true,
      snap: true,
      snapSizes: [
        60 / MediaQuery.of(context).size.height,
        0.5,
      ],
      controller: controller,
      builder: (BuildContext context, ScrollController scrollController) {
        return DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(0, 1),
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22),
              topRight: Radius.circular(22),
            ),
          ),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 5,
                      decoration: const BoxDecoration(
                        color: Colors.black45,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                    widget.child,
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}