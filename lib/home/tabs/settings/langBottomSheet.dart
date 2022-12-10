import 'package:flutter/material.dart';
import 'package:islami_app/providers/myProvider.dart';
import 'package:provider/provider.dart';

class LangBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Myprovider>(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.langIsoCode('en');
                Navigator.pop(context);

              },
              child: LongItem(context, 'English', provider.langCode=='en'?true:false)),
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
                provider.langIsoCode('ar');
                Navigator.pop(context);

              },
              child: LongItem(context, provider.langCode=='ar'?'العربيه':'Arabic',  provider.langCode=='ar'?true:false)),
        ],
      ),
    );
  }

  Widget LongItem(BuildContext context, String title, bool isSelected) {
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
