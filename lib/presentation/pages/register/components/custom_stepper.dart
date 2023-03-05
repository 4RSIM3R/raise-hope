import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/extensions.dart';

class CustomStepperStep {
  final IconData icon;
  final String title;

  const CustomStepperStep({
    required this.icon,
    required this.title,
  });
}

class CustomStepper extends StatefulWidget {
  final List<CustomStepperStep> steps;
  final int currentStep;
  final Color? activeColor;
  final int animationDuration;
  final int iconAnimationDuration;

  const CustomStepper({
    super.key,
    required this.steps,
    required this.currentStep,
    this.activeColor,
    this.animationDuration = 700,
    this.iconAnimationDuration = 300,
  });

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  int _previousStep = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (widget.currentStep != _previousStep) {
      setState(() {
        _previousStep = widget.currentStep;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < widget.steps.length; i++) ...[
          _buildStep(i),
          if (i < widget.steps.length - 1) 8.verticalSpace,
          if (i < widget.steps.length - 1)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 6,
                      decoration: BoxDecoration(
                        color:
                            context.colorScheme.onBackground.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    TweenAnimationBuilder(
                      tween: Tween<double>(
                        begin: 0,
                        end: widget.currentStep > i ? 1 : 0,
                      ),
                      curve: Curves.easeInOut,
                      duration: widget.animationDuration.milliseconds,
                      builder: (context, value, child) => LayoutBuilder(
                        builder: (context, constraint) => Container(
                          width: constraint.maxWidth * value,
                          height: 6,
                          decoration: BoxDecoration(
                            color: widget.activeColor ??
                                context.colorScheme.primary,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ],
    );
  }

  Widget _buildStep(int index) {
    final step = widget.steps[index];
    final isCurrentStep = index == widget.currentStep;
    final isCompleted = index < widget.currentStep;

    final totalAnimationDuration =
        widget.animationDuration + widget.iconAnimationDuration;

    final intervalDelay = widget.animationDuration / totalAnimationDuration;

    return SizedBox(
      width: 64,
      child: Column(
        children: [
          AnimatedContainer(
            width: 34,
            height: 34,
            duration: totalAnimationDuration.milliseconds,
            curve: Interval(
              _previousStep < widget.currentStep ? intervalDelay : 0,
              _previousStep < widget.currentStep ? 1 : 1 - intervalDelay,
              curve: Curves.easeOut,
            ),
            decoration: BoxDecoration(
              color: isCompleted || isCurrentStep
                  ? (widget.activeColor ?? context.colorScheme.primary)
                  : context.colorScheme.onBackground.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: AnimatedSwitcher(
              duration: widget.iconAnimationDuration.milliseconds,
              child: Icon(
                key: ValueKey("${index}_$isCompleted"),
                isCompleted ? Icons.check_rounded : step.icon,
                color: Colors.white,
              ),
            ),
          ),
          8.verticalSpace,
          Text(
            step.title,
            style: context.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
