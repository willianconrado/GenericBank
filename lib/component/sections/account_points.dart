import 'package:flutter/material.dart';
import 'package:will_bank/component/box_card.dart';
import 'package:will_bank/component/color_dot.dart';
import 'package:will_bank/component/content_division.dart';
import 'package:will_bank/themes/theme_colors.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          BoxCard(boxContent: _AccountPointsContent()),
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: Text(
            'Pontos totais:',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            '3000',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const ContentDivision(),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(
            'Objetivos:',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDot(
                    color: ThemeColors.accountPoints['red'],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                  child: Text('Entrega grátis: '),
                ),
                Text('15000pts'),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDot(
                    color: ThemeColors.accountPoints['purple'],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                  child: Text('1 mês de streaming: '),
                ),
                Text('30000pts'),
              ],
            ),
          ],
        )
      ],
    );
  }
}
