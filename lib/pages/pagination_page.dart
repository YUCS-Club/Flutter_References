import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:my_course/models/passenger.dart';
import 'package:my_course/service/api.dart';

class PaginationPage extends StatefulWidget {
  const PaginationPage({Key? key}) : super(key: key);

  @override
  _PaginationPageState createState() => _PaginationPageState();
}

class _PaginationPageState extends State<PaginationPage> {
  final PagingController<int, Passenger> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final response = await API().getPassengers(pageKey);
      final isLastPage = response.totalPages == pageKey;
      if (isLastPage) {
        _pagingController.appendLastPage(response.passengers);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(response.passengers, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagination List"),
      ),
      body: PagedListView<int, Passenger>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Passenger>(
          itemBuilder: (context, item, index) {
            return ListTile(
              title: Text(item.name),
              onTap: () {
                print("the index is $index");
              },
            );
          },
        ),
      ),
    );
  }
}
