import 'package:flutter/material.dart';
import 'package:nftapp/components/nft_card.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const NftCard(imagePath: 'lib/images/apiens3.png');
  }
}
