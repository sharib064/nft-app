import 'package:flutter/material.dart';
import 'package:nftapp/components/nft_card.dart';

class TopTab extends StatelessWidget {
  const TopTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const NftCard(imagePath: 'lib/images/apiens2.png');
  }
}
