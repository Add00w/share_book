import 'package:flutter/material.dart';
import 'package:share_book/ui/pages/book_details_page.dart';

class LibBooksCard extends StatelessWidget {
  const LibBooksCard({
    Key? key,
    required this.book,
  }) : super(key: key);
  final Map<String, String> book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookDetailsPage(book: book),
          ),
        );
      },
      child: Card(
        color: Theme.of(context).backgroundColor,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              book['title']!,
              style: Theme.of(context).textTheme.headline6,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Image.asset(
                  book['image']!,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
