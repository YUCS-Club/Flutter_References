import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:my_course/models/anime_character.dart';
import 'package:my_course/models/anime_characters_response.dart';
import 'package:my_course/models/anime_response.dart';
import 'package:my_course/service/api.dart';

class AnimePage extends StatefulWidget {
  const AnimePage({Key? key}) : super(key: key);

  @override
  _AnimePageState createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> {
  int animeId = 66;

  final PagingController<int, Data> _controller =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    API().getAnime(animeId: 66).then((anime) {
      print(anime.toString());
    });
    _controller.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final animes =
          await API().getAnimeCharacterList(itemSize: 10, animeId: animeId);
      final isLast = animes.meta.count < (animes.data.length + pageKey);
      if (isLast) {
        _controller.appendLastPage(animes.data);
      } else {
        final nextPageKey = pageKey + animes.data.length;
        _controller.appendPage(animes.data, nextPageKey);
      }
    } catch (e) {
      _controller.error = e;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<AnimeRespoonse>(
        future: API().getAnime(animeId: 66),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: const CircularProgressIndicator(),
              );
            default:
              if (snapshot.hasError) {
                return Center(
                  child: Text("error ${snapshot.error.toString()}"),
                );
              } else {
                return Column(
                  children: [
                    Text(snapshot.data!.animeData.detail.title),
                    Expanded(
                      child: PagedListView<int, Data>(
                        shrinkWrap: true,
                        pagingController: _controller,
                        builderDelegate: PagedChildBuilderDelegate<Data>(
                          itemBuilder: (context, item, index) {
                            return FutureBuilder<AnimeCharacter>(
                              future:
                                  API().getAnimeCharacter(characterId: item.id),
                              builder: (context, snapshot) {
                                switch (snapshot.connectionState) {
                                  case ConnectionState.waiting:
                                    return Center(
                                      child: const Text(""),
                                    );
                                  default:
                                    if (snapshot.hasError) {
                                      return Text(
                                          "error ${snapshot.error.toString()}");
                                    } else {
                                      return ListTile(
                                        title: Text(
                                          snapshot.data!.characterDetail
                                              .attributes.name,
                                        ),
                                      );
                                    }
                                }
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }
          }
        },
      ),
    );
  }
}
