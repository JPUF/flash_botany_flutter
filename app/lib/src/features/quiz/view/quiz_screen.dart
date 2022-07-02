import 'package:flutter/material.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

import '../../../shared/extensions.dart';
import '../../../shared/strings.dart';
import '../../../shared/views/brightness_toggle.dart';
import 'components/grabbing_widgets.dart';
import 'family/family_sheet_scaffold.dart';
import 'flash/flash_container.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  double horizontalPosition = 0;
  double horizontalExpansion = 0;

  final _sheetController = SnappingSheetController();

  final snappingPositions = [
    const SnappingPosition.factor(
      positionFactor: 0.0,
      grabbingContentOffset: GrabbingContentOffset.top,
    ),
    const SnappingPosition.factor(
      positionFactor: 0.4,
      grabbingContentOffset: GrabbingContentOffset.bottom,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.isMobile) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: false,
              title: Text(Strings.appName, style: context.headlineSmall),
              actions: const [BrightnessToggle()],
            ),
            body: SnappingSheet(
              child: const FlashContainerMobile(),
              grabbingHeight: 60,
              grabbing: const BottomGrabbingWidget(),
              sheetBelow: SnappingSheetContent(
                draggable: false,
                child: const FamilySheetContent(),
              ),
            ),
          );
        }
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text(Strings.appName, style: context.headlineSmall),
            actions: const [BrightnessToggle()],
          ),
          body: SnappingSheet.horizontal(
            controller: _sheetController,
            lockOverflowDrag: true,
            snappingPositions: snappingPositions,
            onSheetMoved: (position) {
              setState(() {
                horizontalPosition = position.relativeToSheetHeight;
                horizontalExpansion = position.relativeToSnappingPositions;
              });
            },
            child: FlashContainerDesktop(
                sheetRelativePosition: horizontalPosition),
            grabbingWidth: 50,
            grabbing: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: GestureDetector(
                  onTap: () {
                    if (!_sheetController.isAttached) return;
                    final nextSnap = snappingPositions.firstWhere(
                        (e) => e != _sheetController.currentSnappingPosition);
                    _sheetController.snapToPosition(nextSnap);
                  },
                  child: SideGrabbingWidget(
                      sheetExpansionPercent: horizontalExpansion)),
            ),
            sheetLeft: SnappingSheetContent(
              draggable: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: FamilySheetContent(
                    sheetExpansionPercent: horizontalExpansion),
              ),
            ),
          ),
        );
      },
    );
  }
}
