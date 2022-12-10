import 'package:flutter/material.dart';

class ThemBottomSheet extends StatelessWidget {
  const ThemBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          ThemegItem(context,'Light',true),

          SizedBox(
            height: 20,
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 1,
            color: Theme.of(context).colorScheme.primary,
          ),
          SizedBox(
            height: 20,
          ),
          ThemegItem(context,'Dark',false),
        ],
      ),
    );
  }
  Widget ThemegItem(BuildContext context, String title, bool isSelected) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.secondary,
          ),
        ),
        Icon(
          Icons.done,
          color: isSelected
              ? Colors.blue
              : Theme.of(context).colorScheme.secondary,
        )
      ],
    );
  }
}
