import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/movie/movie_page.dart';
import 'package:movie_mania/presenter/view/tv/tv_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedPage == 0 ? const MoviePage() : const TvPage(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation_rounded), label: "Movie"),
          BottomNavigationBarItem(icon: Icon(Icons.tv_rounded), label: "Tv"),
        ],
        currentIndex: _selectedPage,
        onTap: (value) {
          setState(() {
            _selectedPage = value;
          });
        },
      ),
    );
  }
}
