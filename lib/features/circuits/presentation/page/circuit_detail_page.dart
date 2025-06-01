import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:peaces_madagascar_tours/core/utils/extensions/context_extensions.dart';
import '../../../../core/themes/app_styles.dart';
import '../../domaine/entities/circuit.dart';

import '../../../shared/shared.dart';

@RoutePage()
class CircuitDetailPage extends StatelessWidget {
  final String circuitName;
  const CircuitDetailPage({super.key, @PathParam('name') required this.circuitName});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double padding = constraints.maxWidth < 790 ? 20.0 : context.screenWidth * .05;

        return HomeLayout(
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0).copyWith(top: 20.0),
                  child: Column(
                    spacing: 8.0,
                    children: [
                      Text(
                        circuits[circuitName]!.intitule,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppStyles.accentColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Peaces Madagascar Tours",
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                              color: AppStyles.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "${circuits[circuitName]!.night} nuits / ${circuits[circuitName]!.days} jours - ${circuits[circuitName]!.person} Personnes",
                      ),
                    ],
                  ),
                ),
                ...List<Widget>.generate(circuits[circuitName]!.etapes.length, (index) {
                  final step = circuits[circuitName]!.etapes[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    child: StepCircuitWidget(step: step),
                  );
                })
              ],
            ),
          ),
        );
      },
    );
  }
}

class StepCircuitWidget extends StatefulWidget {
  final Etape step;
  const StepCircuitWidget({super.key, required this.step});

  @override
  State<StepCircuitWidget> createState() => _StepCircuitWidgetState();
}

class _StepCircuitWidgetState extends State<StepCircuitWidget> {
  bool _descriptionVisible = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0x7A757575),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      duration: Duration(milliseconds: 300),
      child: ListTile(
        title: Text(
          "${widget.step.title} : ${widget.step.destination.join(' - ')}",
          style: TextStyle(
            color: AppStyles.primaryColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        titleAlignment: ListTileTitleAlignment.titleHeight,
        isThreeLine: true,
        trailing: Icon(_descriptionVisible ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_right),
        onTap: () {
          setState(() {
            _descriptionVisible = !_descriptionVisible;
          });
        },
        subtitle: _descriptionVisible
            ? Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(widget.step.description),
              )
            : Container(),
      ),
    );
  }
}
