import 'package:flutter/material.dart';

class HerMessage extends StatelessWidget {
  final String text;
  final String? imageUrl;

  const HerMessage({required this.text, this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        if (imageUrl != null) const SizedBox(height: 5),
        if (imageUrl != null) _Image(imageUrl: imageUrl!),
        const SizedBox(height: 20),
      ],
    );
  }
}

class _Image extends StatelessWidget {
  final String imageUrl;

  const _Image({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('recibiendo imagen'),
          );
        },
      ),
    );
  }
}
