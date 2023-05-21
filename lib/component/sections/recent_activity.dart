import 'package:flutter/material.dart';
import 'package:will_bank/component/box_card.dart';
import 'package:will_bank/component/color_dot.dart';
import 'package:will_bank/component/content_division.dart';
import '../../themes/theme_colors.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(
                    color: ThemeColors.recentAtivity['spent'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Saída',
                    ),
                    Text(
                      'R\$ 9.900,97',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(
                    color: ThemeColors.recentAtivity['income'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Entrada',
                    ),
                    Text(
                      'R\$ 9.900,97',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text('Limite de gastos R\$ 432,90'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const LinearProgressIndicator(
            value: 0.3,
            minHeight: 8,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
          ),
          child: ContentDivision(),
        ),
        const Text(
            'Esse mês você gastou R\$ 1.500,00 com jogos. Tente abaixar esse custo!'),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Diga-me como',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
