import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notnetflix/models/movie.dart';
import 'package:notnetflix/repositories/data_repository.dart';
import 'package:notnetflix/services/api_services.dart';
import 'package:notnetflix/ui/widgets/movie_card.dart';
import 'package:notnetflix/ui/widgets/movie_category.dart';
import 'package:notnetflix/utils/constant.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    getMovies();
  }

  void getMovies() async {
    final dataProvider = Provider.of<DataRepository>(context, listen: false);
    await dataProvider.getPopularMovies();
  }

  @override
  Widget build(BuildContext context) {

    final dataProvider = Provider.of<DataRepository>(context);

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: Image.asset('assets/images/netflix_logo_2.png'),
      ),
      body: ListView(
        children: [
          Container(
            height: 500,
            color: Colors.red,
            child: dataProvider.popularMovieList.isEmpty
                ? const Center()
                : MovieCard(movie: dataProvider.popularMovieList.first),
          ),
          MovieCategory(
              label: 'Tendecias actuales',
              movieList: dataProvider.popularMovieList,
              imageHeight: 160,
              imageWidth: 110
          ),
          MovieCategory(
              label: 'Actualmente en el cine',
              movieList: dataProvider.popularMovieList,
              imageHeight: 320,
              imageWidth: 220
          ),
          const SizedBox(height: 15),
          Text(
            'Actualmente en el cine',
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 220,
                  color: Colors.blue,
                  child: Center(
                    child: Text(index.toString()),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'Proximos estrenos',
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 110,
                  color: Colors.green,
                  child: Center(
                    child: Text(index.toString()),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
