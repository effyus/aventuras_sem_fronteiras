import 'package:flutter/material.dart';
import 'home_trip_card.dart';

class TripSmallCard extends StatelessWidget {
  const TripSmallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        mainAxisExtent: 220,
      ),
      shrinkWrap: true,
      children: const [
        HomeTripCard(
          imagePath:
              'https://images.pexels.com/photos/25252805/pexels-photo-25252805/free-photo-of-cidade-meio-urbano-ferias-agua.jpeg',
          date: 'Dez 2023',
          title: 'O que fazer em Veneza',
        ),
        HomeTripCard(
          imagePath:
              'https://images.pexels.com/photos/20771084/pexels-photo-20771084/free-photo-of-cidade-meio-urbano-carros-veiculos.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          date: 'Jan 2023',
          title: 'Final de semana em Paris',
        ),
        HomeTripCard(
          imagePath:
              'https://images.pexels.com/photos/1701595/pexels-photo-1701595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          date: 'Abril 2023',
          title: 'Para além do Coliseu',
        ),
        HomeTripCard(
          imagePath:
              'https://images.pexels.com/photos/91409/pexels-photo-91409.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          date: 'Junho 2023',
          title: 'Um olhar para o Egito',
        ),
        HomeTripCard(
          imagePath:
              'https://images.pexels.com/photos/2070485/pexels-photo-2070485.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          date: 'Abril 2024',
          title: 'O que fazer na Tailandia',
        ),
        HomeTripCard(
          imagePath:
              'https://images.pexels.com/photos/3030647/pexels-photo-3030647.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          date: 'Janeiro 2024',
          title: 'Nova York noturna',
        )
      ],
    );
  }
}
