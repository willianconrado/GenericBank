import 'package:flutter/material.dart';
import 'package:will_bank/themes/theme_colors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ThemeColors.headerGradient,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Text('R\$ 1.000,00',style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),                ),
                Text.rich(
                  TextSpan(text: 'R\$ ', children: <TextSpan>[
                    TextSpan(
                      text: '1.000,00',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ]),
                ),
                const Text(
                  'Balanço disponível',
                ),
              ],
            ),
            const Icon(
              Icons.account_circle,
              size: 42,
            ),
          ],
        ),
      ),
    );
  }
}
