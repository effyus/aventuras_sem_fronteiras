import 'package:flutter/material.dart';
//import 'package:wander_animation/gen/assets.gen.dart';
import 'package:wander_animation/models/trip_data.dart';
import 'package:wander_animation/widgets/like_button.dart';
import 'package:wander_animation/widgets/trip_data_card.dart';

//import 'message_row.dart';

class TripDetailsPageViewItem extends StatelessWidget {
  TripDetailsPageViewItem({super.key});

  final tripData = [
    const TripData(
      title:
          'Visitar o Rio de Janeiro é uma experiência vibrante e inesquecível. Subir ao Cristo Redentor e ao Pão de Açúcar revela vistas deslumbrantes. Passear pelas praias de Copacabana e Ipanema, sentir a energia do mar e do sol, é encantador. Explorar o Maracanã emociona até quem não é fã de futebol. O Rio combina beleza natural e vida urbana de forma única, criando memórias duradouras. Veneza é uma cidade encantadora cheia de história e cultura. Visite a Praça de São Marcos, explore o Grande Canal em uma gôndola, e admire a arte no Palácio Ducal e na Basílica de São Marcos. Passeie pelas ilhas de Murano, Burano e Torcello, e perca-se nos becos charmosos da cidade. Não perca o famoso Carnaval de Veneza e desfrute da deliciosa culinária local.',
      imagePath: '',
      tripAdditionalInfos: [(title: '', number: '')],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 150),
            SizedBox(
              height: 1000,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                scrollDirection: Axis.horizontal,
                itemCount: tripData.length,
                itemBuilder: (context, index) =>
                    TripDataCard(tripData: tripData[index]),
              ),
            ),
            const LikeButton()
          ],
        ),
      ),
    ));
  }
}
