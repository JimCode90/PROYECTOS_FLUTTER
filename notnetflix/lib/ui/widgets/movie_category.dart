import 'package:flutter/material.dart';
import 'package:notnetflix/models/movie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notnetflix/ui/widgets/movie_card.dart';

class MovieCategory extends StatelessWidget {

  final String label;
  final List<Movie> movieList;
  final double imageHeight;
  final double imageWidth;

  const MovieCategory({
    Key? key,
    required this.label,
    required this.movieList,
    required this.imageHeight,
    required this.imageWidth
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Text(
          label,
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: imageHeight,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: imageWidth,
                  color: Colors.yellow,
                  child: movieList.isEmpty
                      ? Center(child: Text(index.toString()))
                      : MovieCard(
                    movie: movieList[index],
                  )
              );
            },
          ),
        ),
      ],
    );
  }
}
