import 'package:flutter/material.dart';
import 'package:islami_app/providers/myProvider.dart';
import 'package:provider/provider.dart';

class ThemBottomSheet extends StatelessWidget {
  const ThemBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Myprovider>(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.cangeTheme( ThemeMode.light);
                Navigator.pop(context);
              },
              child: ThemegItem(context,'Light',provider.themeMode==ThemeMode.light?true:false)),

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
          InkWell(
              onTap: () {
                provider.cangeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: ThemegItem(context,'Dark',provider.themeMode==ThemeMode.dark?true:false)),
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
                : Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        Icon(
          Icons.done,
          color: isSelected
              ? Colors.blue
              : Theme.of(context).colorScheme.onPrimary,
        )
      ],
    );
  }
}
